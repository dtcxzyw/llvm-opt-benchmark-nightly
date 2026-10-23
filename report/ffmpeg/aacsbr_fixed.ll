Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacsbr_fixed?download=true
inline.NumInlined: 254
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 27
begin_hunk_0_@sbr_hf_assemble:bb.a
  %.sroa.5.0.extract.shift18.i = lshr i64 %.sroa.05.0.insert.insert.i37.i, 32
  br label %av_add_sf.exit

av_add_sf.exit:                                   ; preds = %bb.j, %av_normalize_sf.exit.i, %bb.m, %av_normalize_sf.exit41.i
  %.sroa.016.0.i = phi i64 [ %..i, %bb.j ], [ %.sroa.05.0.insert.insert.i.i, %av_normalize_sf.exit.i ], [ %.sroa.05.0.insert.insert.i37.i, %av_normalize_sf.exit41.i ], [ %i.fn, %bb.m ]
  %.sroa.5.0.i = phi i64 [ %.sroa.4.0.extract.shift.i, %bb.j ], [ %.sroa.5.0.extract.shift.i, %av_normalize_sf.exit.i ], [ %.sroa.5.0.extract.shift18.i, %av_normalize_sf.exit41.i ], [ %.sroa.414.0.extract.shift.i, %bb.m ]
  %.sroa.5.0.insert.shift.i = shl nuw i64 %.sroa.5.0.i, 32
  %.sroa.016.0.insert.ext.i = and i64 %.sroa.016.0.i, 4294967295
  %.sroa.016.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, %.sroa.016.0.insert.ext.i ; 2 uses
  %gep333 = getelementptr inbounds nuw [384 x i8], ptr %invariant.gep332, i64 %i.fp
  %i.hu = load i64, ptr %gep333, align 4          ; 2 uses
  %i.hv = shl i64 %i.hu, 32
  %i.hw = ashr exact i64 %i.hv, 32
  %i.hx = mul nsw i64 %i.hw, %i.fw
  %i.hy = lshr i64 %i.hx, 29
  %.sroa.0.0.insert.insert.i240 = add i64 %i.fz, %i.hu
  %.sroa.0.0.extract.trunc.i.i241 = trunc i64 %i.hy to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i242 = lshr i64 %.sroa.0.0.insert.insert.i240, 32 ; 2 uses
  %i.hz = add i32 %.sroa.0.0.extract.trunc.i.i241, 1073741824
  %i.ia = icmp slt i32 %i.hz, 1                   ; 2 uses
  %i.ib = add nuw nsw i64 %.sroa.5.0.extract.shift.i.i242, 1
  %i.ic = and i64 %i.ib, 4294967295
  %.sroa.5.0.i.i243 = select i1 %i.ia, i64 %i.ic, i64 %.sroa.5.0.extract.shift.i.i242 ; 2 uses
  %i.id = zext i1 %i.ia to i32
  %.sroa.0.0.i.i244 = ashr i32 %.sroa.0.0.extract.trunc.i.i241, %i.id ; 2 uses
  %.sroa.2.0.insert.shift.i.i245 = shl nuw i64 %.sroa.5.0.i.i243, 32
  %.sroa.02.0.insert.ext.i.i246 = zext i32 %.sroa.0.0.i.i244 to i64
  %.sroa.02.0.insert.insert.i.i247 = or disjoint i64 %.sroa.2.0.insert.shift.i.i245, %.sroa.02.0.insert.ext.i.i246
  %.sroa.7.0.extract.trunc11.i248 = trunc nuw i64 %.sroa.5.0.i.i243 to i32
  %i.ie = icmp eq i32 %.sroa.0.0.i.i244, 0
  %i.if = icmp slt i32 %.sroa.7.0.extract.trunc11.i248, -149
  %or.cond.i249 = select i1 %i.ie, i1 true, i1 %i.if
  %..i250 = select i1 %or.cond.i249, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i247 ; 3 uses
  %.sroa.012.0.extract.trunc.i251 = trunc i64 %i.fo to i32 ; 2 uses
  %.sroa.414.0.extract.shift.i252 = lshr i64 %i.fo, 32 ; 3 uses
  %.sroa.414.0.extract.trunc.i253 = trunc nuw i64 %.sroa.414.0.extract.shift.i252 to i32
  %.sroa.09.0.extract.trunc.i254 = trunc i64 %..i250 to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i255 = lshr i64 %..i250, 32 ; 3 uses
  %.sroa.4.0.extract.trunc.i256 = trunc nuw i64 %.sroa.4.0.extract.shift.i255 to i32
  %i.ig = sub nsw i32 %.sroa.414.0.extract.trunc.i253, %.sroa.4.0.extract.trunc.i256 ; 5 uses
  %i.ih = icmp slt i32 %i.ig, -31
  br i1 %i.ih, label %av_add_sf.exit294, label %bb.o

bb.o:                                             ; preds = %av_add_sf.exit
  %i.ii = icmp slt i32 %i.ig, 0
  br i1 %i.ii, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ij = sub nsw i32 0, %i.ig
  %i.ik = ashr i32 %.sroa.012.0.extract.trunc.i251, %i.ij
  %i.il = add nsw i32 %i.ik, %.sroa.09.0.extract.trunc.i254 ; 2 uses
  %i.im = add i32 %i.il, 1073741824
  %i.in = icmp slt i32 %i.im, 1                   ; 2 uses
  %i.io = zext i1 %i.in to i32
  %.sroa.0.0.i.i278 = ashr i32 %i.il, %i.io       ; 4 uses
  %.not.i.i279 = icmp eq i32 %.sroa.0.0.i.i278, 0
  br i1 %.not.i.i279, label %av_normalize_sf.exit.i288, label %.preheader.i.i280

.preheader.i.i280:                                ; preds = %bb.p
  %i.ip = zext i1 %i.in to i64
  %.sroa.5.0.i.i281 = add nuw nsw i64 %.sroa.4.0.extract.shift.i255, %i.ip
  %.sroa.8.0.extract.trunc.i.i282 = trunc i64 %.sroa.5.0.i.i281 to i32 ; 2 uses
  %i.iq = add i32 %.sroa.0.0.i.i278, 536870911
  %i.ir = icmp ult i32 %i.iq, 1073741823
  br i1 %i.ir, label %.lr.ph.i.i291, label %._crit_edge.i.i283

.lr.ph.i.i291:                                    ; preds = %.preheader.i.i280, %.lr.ph.i.i291
  %.sroa.0.08.i.i292 = phi i32 [ %i.is, %.lr.ph.i.i291 ], [ %.sroa.0.0.i.i278, %.preheader.i.i280 ]
  %.sroa.8.07.i.i293 = phi i32 [ %i.it, %.lr.ph.i.i291 ], [ %.sroa.8.0.extract.trunc.i.i282, %.preheader.i.i280 ]
  %i.is = shl nsw i32 %.sroa.0.08.i.i292, 1       ; 3 uses
  %i.it = add nsw i32 %.sroa.8.07.i.i293, -1      ; 2 uses
  %i.iu = add nsw i32 %i.is, 536870911
  %i.iv = icmp ult i32 %i.iu, 1073741823
  br i1 %i.iv, label %.lr.ph.i.i291, label %._crit_edge.i.i283, !llvm.loop !2

._crit_edge.i.i283:                               ; preds = %.lr.ph.i.i291, %.preheader.i.i280
  %.sroa.8.0.lcssa.i.i284 = phi i32 [ %.sroa.8.0.extract.trunc.i.i282, %.preheader.i.i280 ], [ %i.it, %.lr.ph.i.i291 ] ; 2 uses
  %.sroa.0.0.lcssa.i.i285 = phi i32 [ %.sroa.0.0.i.i278, %.preheader.i.i280 ], [ %i.is, %.lr.ph.i.i291 ]
  %i.iw = icmp slt i32 %.sroa.8.0.lcssa.i.i284, -149
  %spec.select.i.i286 = call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i.i284, i32 -149)
  %spec.select6.i.i287 = select i1 %i.iw, i32 0, i32 %.sroa.0.0.lcssa.i.i285
  %i.ix = zext i32 %spec.select.i.i286 to i64
  %i.iy = shl nuw i64 %i.ix, 32
  %i.iz = zext i32 %spec.select6.i.i287 to i64
  %i.ja = or disjoint i64 %i.iy, %i.iz
  br label %av_normalize_sf.exit.i288

av_normalize_sf.exit.i288:                        ; preds = %._crit_edge.i.i283, %bb.p
  %.sroa.05.0.insert.insert.i.i289 = phi i64 [ -639950127104, %bb.p ], [ %i.ja, %._crit_edge.i.i283 ] ; 2 uses
  %.sroa.5.0.extract.shift.i290 = lshr i64 %.sroa.05.0.insert.insert.i.i289, 32
  br label %av_add_sf.exit294

bb.q:                                             ; preds = %bb.o
  %i.jb = icmp samesign ult i32 %i.ig, 32
  br i1 %i.jb, label %bb.r, label %av_add_sf.exit294

bb.r:                                             ; preds = %bb.q
  %i.jc = ashr i32 %.sroa.09.0.extract.trunc.i254, %i.ig
  %i.jd = add nsw i32 %i.jc, %.sroa.012.0.extract.trunc.i251 ; 2 uses
  %i.je = add i32 %i.jd, 1073741824
  %i.jf = icmp slt i32 %i.je, 1                   ; 2 uses
  %i.jg = zext i1 %i.jf to i32
  %.sroa.0.0.i24.i262 = ashr i32 %i.jd, %i.jg     ; 4 uses
  %.not.i29.i263 = icmp eq i32 %.sroa.0.0.i24.i262, 0
  br i1 %.not.i29.i263, label %av_normalize_sf.exit41.i272, label %.preheader.i30.i264

.preheader.i30.i264:                              ; preds = %bb.r
  %i.jh = zext i1 %i.jf to i64
  %.sroa.5.0.i23.i265 = add nuw nsw i64 %.sroa.414.0.extract.shift.i252, %i.jh
  %.sroa.8.0.extract.trunc.i31.i266 = trunc i64 %.sroa.5.0.i23.i265 to i32 ; 2 uses
  %i.ji = add i32 %.sroa.0.0.i24.i262, 536870911
  %i.jj = icmp ult i32 %i.ji, 1073741823
  br i1 %i.jj, label %.lr.ph.i38.i275, label %._crit_edge.i32.i267

.lr.ph.i38.i275:                                  ; preds = %.preheader.i30.i264, %.lr.ph.i38.i275
  %.sroa.0.08.i39.i276 = phi i32 [ %i.jk, %.lr.ph.i38.i275 ], [ %.sroa.0.0.i24.i262, %.preheader.i30.i264 ]
  %.sroa.8.07.i40.i277 = phi i32 [ %i.jl, %.lr.ph.i38.i275 ], [ %.sroa.8.0.extract.trunc.i31.i266, %.preheader.i30.i264 ]
  %i.jk = shl nsw i32 %.sroa.0.08.i39.i276, 1     ; 3 uses
  %i.jl = add nsw i32 %.sroa.8.07.i40.i277, -1    ; 2 uses
  %i.jm = add nsw i32 %i.jk, 536870911
  %i.jn = icmp ult i32 %i.jm, 1073741823
  br i1 %i.jn, label %.lr.ph.i38.i275, label %._crit_edge.i32.i267, !llvm.loop !2

._crit_edge.i32.i267:                             ; preds = %.lr.ph.i38.i275, %.preheader.i30.i264
  %.sroa.8.0.lcssa.i33.i268 = phi i32 [ %.sroa.8.0.extract.trunc.i31.i266, %.preheader.i30.i264 ], [ %i.jl, %.lr.ph.i38.i275 ] ; 2 uses
  %.sroa.0.0.lcssa.i34.i269 = phi i32 [ %.sroa.0.0.i24.i262, %.preheader.i30.i264 ], [ %i.jk, %.lr.ph.i38.i275 ]
  %i.jo = icmp slt i32 %.sroa.8.0.lcssa.i33.i268, -149
  %spec.select.i35.i270 = call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i33.i268, i32 -149)
  %spec.select6.i36.i271 = select i1 %i.jo, i32 0, i32 %.sroa.0.0.lcssa.i34.i269
  %i.jp = zext i32 %spec.select.i35.i270 to i64
  %i.jq = shl nuw i64 %i.jp, 32
  %i.jr = zext i32 %spec.select6.i36.i271 to i64
  %i.js = or disjoint i64 %i.jq, %i.jr
  br label %av_normalize_sf.exit41.i272

av_normalize_sf.exit41.i272:                      ; preds = %._crit_edge.i32.i267, %bb.r
  %.sroa.05.0.insert.insert.i37.i273 = phi i64 [ -639950127104, %bb.r ], [ %i.js, %._crit_edge.i32.i267 ] ; 2 uses
  %.sroa.5.0.extract.shift18.i274 = lshr i64 %.sroa.05.0.insert.insert.i37.i273, 32
  br label %av_add_sf.exit294

av_add_sf.exit294:                                ; preds = %av_add_sf.exit, %av_normalize_sf.exit.i288, %bb.q, %av_normalize_sf.exit41.i272
  %.sroa.016.0.i257 = phi i64 [ %..i250, %av_add_sf.exit ], [ %.sroa.05.0.insert.insert.i.i289, %av_normalize_sf.exit.i288 ], [ %.sroa.05.0.insert.insert.i37.i273, %av_normalize_sf.exit41.i272 ], [ %i.fo, %bb.q ]
  %.sroa.5.0.i258 = phi i64 [ %.sroa.4.0.extract.shift.i255, %av_add_sf.exit ], [ %.sroa.5.0.extract.shift.i290, %av_normalize_sf.exit.i288 ], [ %.sroa.5.0.extract.shift18.i274, %av_normalize_sf.exit41.i272 ], [ %.sroa.414.0.extract.shift.i252, %bb.q ]
  %.sroa.5.0.insert.shift.i259 = shl nuw i64 %.sroa.5.0.i258, 32
  %.sroa.016.0.insert.ext.i260 = and i64 %.sroa.016.0.i257, 4294967295
  %.sroa.016.0.insert.insert.i261 = or disjoint i64 %.sroa.5.0.insert.shift.i259, %.sroa.016.0.insert.ext.i260 ; 2 uses
  %indvars.iv.next383 = add nuw nsw i64 %indvars.iv382, 1 ; 2 uses
  %exitcond386.not = icmp eq i64 %indvars.iv.next383, %wide.trip.count385
  br i1 %exitcond386.not, label %bb.s, label %bb.j, !llvm.loop !255

bb.s:                                             ; preds = %av_add_sf.exit294
  store i64 %.sroa.016.0.insert.insert.i, ptr %i.fj, align 8
  store i64 %.sroa.016.0.insert.insert.i261, ptr %i.fl, align 8
  %indvars.iv.next388 = add nuw nsw i64 %indvars.iv387, 1 ; 2 uses
  %exitcond391.not = icmp eq i64 %indvars.iv.next388, %wide.trip.count390
  br i1 %exitcond391.not, label %.loopexit, label %bb.i, !llvm.loop !256

bb.t:                                             ; preds = %bb.h, %bb.g, %bb.f
  %gep442 = getelementptr inbounds nuw [384 x i8], ptr %invariant.gep441, i64 %indvars.iv395
  %i.jt = getelementptr inbounds nuw [384 x i8], ptr %i.i, i64 %indvars.iv395
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %.preheader, %bb.t
  %.0213 = phi ptr [ %gep442, %bb.t ], [ %5, %.preheader ], [ %5, %bb.s ]
  %.0212 = phi ptr [ %i.jt, %bb.t ], [ %6, %.preheader ], [ %6, %bb.s ]
  %i.ju = load ptr, ptr %i.dt, align 8, !tbaa !260
  %gep352 = getelementptr [512 x i8], ptr %invariant.gep351, i64 %indvars.iv395 ; 3 uses
  %i.jv = add nuw nsw i64 %indvars.iv395, 2
  call void %i.ju(ptr noundef %gep352, ptr noundef %i.dv, ptr noundef %.0213, i32 noundef %i.g, i64 noundef %i.jv) #12
  %i.jw = load i32, ptr %4, align 4, !tbaa !14
  %i.jx = zext i32 %i.jw to i64
  %.not230 = icmp eq i64 %indvars.iv398, %i.jx
  br i1 %.not230, label %bb.w, label %bb.u

bb.u:                                             ; preds = %.loopexit
  %i.jy = load i32, ptr %i.dr, align 4, !tbaa !14
  %i.jz = zext i32 %i.jy to i64
  %.not231 = icmp eq i64 %indvars.iv398, %i.jz
  br i1 %.not231, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ka = sext i32 %.1215343 to i64
  %i.kb = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.ka
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !27
  call void %i.kc(ptr noundef %gep352, ptr noundef nonnull %i.fb, ptr noundef %.0212, i32 noundef %.1218342, i32 noundef %i.e, i32 noundef %i.g) #12
  br label %.critedge

bb.w:                                             ; preds = %bb.u, %.loopexit
  %i.kd = and i32 %.1215343, 1                    ; 3 uses
  %i.ke = add nsw i32 %.1215343, %i.dy
  %i.kf = and i32 %i.ke, 2
  %i.kg = sub nsw i32 1, %i.kf                    ; 3 uses
  %i.kh = sub nsw i32 0, %i.kd
  %i.ki = xor i32 %i.kg, %i.kh
  %i.kj = add nsw i32 %i.ki, %i.kd
  %i.kk = zext nneg i32 %i.kd to i64
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %gep352, i64 %i.kk ; 3 uses
  br i1 %i.dz, label %.lr.ph341, label %._crit_edge

.lr.ph341:                                        ; preds = %bb.w, %bb.ac
  %indvars.iv392 = phi i64 [ %indvars.iv.next393, %bb.ac ], [ 0, %bb.w ] ; 5 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv392 ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !76 ; 4 uses
  %i.kp = sub nsw i32 22, %i.ko                   ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.km, i64 12
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !76 ; 4 uses
  %i.kt = sub nsw i32 22, %i.ks                   ; 2 uses
  %i.ku = icmp slt i32 %i.ko, 22
  %i.kv = icmp slt i32 %i.ks, 22
  %or.cond.not = select i1 %i.ku, i1 %i.kv, i1 false
  br i1 %or.cond.not, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %.lr.ph341
  %i.kw = icmp sgt i32 %i.ko, -10
  br i1 %i.kw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.kx = sub nsw i32 21, %i.ko
  %i.ky = shl nuw nsw i32 1, %i.kx
  %i.kz = load i32, ptr %i.km, align 4, !tbaa !77
  %i.la = mul nsw i32 %i.kz, %i.kg
  %i.lb = add i32 %i.la, %i.ky
  %i.lc = ashr i32 %i.lb, %i.kp
  %.idx423 = shl nuw nsw i64 %indvars.iv392, 3
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kl, i64 %.idx423 ; 2 uses
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !14
  %i.lf = add i32 %i.lc, %i.le
  store i32 %i.lf, ptr %i.ld, align 4, !tbaa !14
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.lg = icmp sgt i32 %i.ks, -10
  br i1 %i.lg, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.lh = sub nsw i32 21, %i.ks
  %i.li = shl nuw nsw i32 1, %i.lh
  %i.lj = load i32, ptr %i.kq, align 4, !tbaa !77
  %i.lk = mul nsw i32 %i.lj, %i.kj
  %i.ll = add i32 %i.lk, %i.li
  %i.lm = ashr i32 %i.ll, %i.kt
  %.idx424 = shl nuw nsw i64 %indvars.iv392, 3
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kl, i64 %.idx424
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8 ; 2 uses
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !14
  %i.lq = add i32 %i.lm, %i.lp
  store i32 %i.lq, ptr %i.lo, align 4, !tbaa !14
  br label %bb.ac

bb.ab:                                            ; preds = %.lr.ph341
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.39, i32 noundef %i.kp, i32 noundef %i.kt) #12
  br label %.critedge236

bb.ac:                                            ; preds = %bb.z, %bb.aa
  %indvars.iv.next393 = add nuw nsw i64 %indvars.iv392, 2 ; 2 uses
  %i.lr = trunc i64 %indvars.iv392 to i32
  %7 = add i32 %i.lr, 3
  %i.ls = icmp slt i32 %7, %i.g
  br i1 %i.ls, label %.lr.ph341, label %._crit_edge.loopexit, !llvm.loop !257

._crit_edge.loopexit:                             ; preds = %bb.ac
  %i.lt = trunc nuw i64 %indvars.iv.next393 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.w
  %.1211.lcssa = phi i32 [ 0, %bb.w ], [ %i.lt, %._crit_edge.loopexit ] ; 2 uses
  br i1 %.not232, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge
  %i.lu = zext nneg i32 %.1211.lcssa to i64
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.lu ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 4
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !76 ; 4 uses
  %i.ly = sub nsw i32 22, %i.lx                   ; 2 uses
  %i.lz = icmp sgt i32 %i.lx, 21
  br i1 %i.lz, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.40, i32 noundef %i.ly) #12
  br label %.critedge236

bb.af:                                            ; preds = %bb.ad
  %i.ma = icmp sgt i32 %i.lx, -10
  br i1 %i.ma, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %bb.af
  %i.mb = sub nsw i32 21, %i.lx
  %i.mc = shl nuw nsw i32 1, %i.mb
  %i.md = load i32, ptr %i.lv, align 4, !tbaa !77
  %i.me = mul nsw i32 %i.md, %i.kg
  %i.mf = add i32 %i.me, %i.mc
  %i.mg = ashr i32 %i.mf, %i.ly
  %i.mh = shl nuw nsw i32 %.1211.lcssa, 1
  %i.mi = zext nneg i32 %i.mh to i64
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %i.mi ; 2 uses
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !14
  %i.ml = add i32 %i.mg, %i.mk
  store i32 %i.ml, ptr %i.mj, align 4, !tbaa !14
  br label %.critedge

.critedge:                                        ; preds = %bb.ag, %bb.af, %._crit_edge, %bb.v
  %i.mm = add nsw i32 %.1218342, %i.g
  %i.mn = and i32 %i.mm, 511                      ; 2 uses
  %i.mo = add nsw i32 %.1215343, 1
  %i.mp = and i32 %i.mo, 3                        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %indvars.iv.next396 = add nuw nsw i64 %indvars.iv395, 1 ; 2 uses
  %i.mq = load i8, ptr %i.ey, align 1, !tbaa !13  ; 2 uses
  %i.mr = zext i8 %i.mq to i64
  %i.ms = shl nuw nsw i64 %i.mr, 1
  %i.mt = icmp samesign ult i64 %indvars.iv.next396, %i.ms
  br i1 %i.mt, label %bb.f, label %.loopexit295.loopexit, !llvm.loop !258

._crit_edge357:                                   ; preds = %.loopexit295, %.loopexit299
  %.0217.lcssa = phi i32 [ %i.k, %.loopexit299 ], [ %.1218.lcssa, %.loopexit295 ]
  %.0214.lcssa = phi i32 [ %i.m, %.loopexit299 ], [ %.1215.lcssa, %.loopexit295 ]
  store i32 %.0217.lcssa, ptr %i.j, align 8, !tbaa !66
  store i32 %.0214.lcssa, ptr %i.l, align 4, !tbaa !259
  br label %bb.ah

.critedge236:                                     ; preds = %bb.ab, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.ah

bb.ah:                                            ; preds = %.critedge236, %._crit_edge357
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef i32 @sbr_x_gen(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 19456)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6) #9 {
bb.a:
  %i.a = shl nsw i32 %6, 1                        ; 3 uses
  %i.b = sext i32 %5 to i64
  %i.c = getelementptr [106672 x i8], ptr %0, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 106753
  %i.e = load i8, ptr %i.d, align 1, !tbaa !70
  %i.f = zext i8 %i.e to i32
  %i.g = sub i32 %i.f, %6
  %i.h = tail call i32 @llvm.smax.i32(i32 %i.g, i32 0) ; 2 uses
  %spec.select = shl nuw i32 %i.h, 1              ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(19456) %1, i8 0, i64 19456, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !14   ; 4 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.preheader94.lr.ph, label %.preheader93

.preheader94.lr.ph:                               ; preds = %bb.a
  %i.l = icmp sgt i32 %spec.select, 0
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 9728
  br i1 %i.l, label %.preheader94.us.preheader, label %.preheader93

.preheader94.us.preheader:                        ; preds = %.preheader94.lr.ph
  %wide.trip.count = zext nneg i32 %spec.select to i64
  br label %.preheader94.us

.preheader94.us:                                  ; preds = %.preheader94.us.preheader, %._crit_edge.us
  %indvars.iv131 = phi i64 [ 0, %.preheader94.us.preheader ], [ %indvars.iv.next132, %._crit_edge.us ] ; 4 uses
  %i.n = getelementptr inbounds nuw [320 x i8], ptr %4, i64 %indvars.iv131 ; 2 uses
  %invariant.gep.us = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv131 ; 2 uses
  %invariant.gep97.us = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv131 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader94.us
  %indvars.iv = phi i64 [ 0, %.preheader94.us ], [ %indvars.iv.next.1, %bb.b ] ; 5 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i32, ptr %i.p, align 4, !tbaa !14
  %gep.us = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep.us, i64 %indvars.iv
  store i32 %i.q, ptr %gep.us, align 4, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !14
  %gep98.us = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep97.us, i64 %indvars.iv
  store i32 %i.s, ptr %gep98.us, align 4, !tbaa !14
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i32, ptr %i.u, align 4, !tbaa !14
  %gep.us.1 = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep.us, i64 %indvars.iv.next
  store i32 %i.v, ptr %gep.us.1, align 4, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !14
  %gep98.us.1 = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep97.us, i64 %indvars.iv.next
  store i32 %i.x, ptr %gep98.us.1, align 4, !tbaa !14
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.b, !llvm.loop !261

._crit_edge.us:                                   ; preds = %bb.b
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 3 uses
  %i.y = load i32, ptr %i.i, align 4, !tbaa !14   ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next132, %i.z
  br i1 %i.aa, label %.preheader94.us, label %.preheader93.loopexit, !llvm.loop !262

.preheader93.loopexit:                            ; preds = %._crit_edge.us
  %i.ab = trunc nuw nsw i64 %indvars.iv.next132 to i32
  br label %.preheader93

.preheader93:                                     ; preds = %.preheader94.lr.ph, %.preheader93.loopexit, %bb.a
  %i.ac = phi i32 [ %i.j, %bb.a ], [ %i.y, %.preheader93.loopexit ], [ %i.j, %.preheader94.lr.ph ]
  %.084.lcssa = phi i32 [ 0, %bb.a ], [ %i.ab, %.preheader93.loopexit ], [ %i.j, %.preheader94.lr.ph ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !14
  %i.af = add nsw i32 %i.ae, %i.ac
  %i.ag = icmp slt i32 %.084.lcssa, %i.af
  br i1 %i.ag, label %.preheader92.lr.ph, label %.preheader91

.preheader92.lr.ph:                               ; preds = %.preheader93
  %i.ah = icmp sgt i32 %spec.select, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 9728
  br i1 %i.ah, label %.preheader92.preheader, label %.preheader91

.preheader92.preheader:                           ; preds = %.preheader92.lr.ph
  %i.aj = sext i32 %i.a to i64
  %i.ak = zext nneg i32 %.084.lcssa to i64
  %wide.trip.count137 = zext nneg i32 %spec.select to i64
  %invariant.gep162 = getelementptr [512 x i8], ptr %2, i64 %i.aj
  br label %.preheader92

.preheader92:                                     ; preds = %.preheader92.preheader, %._crit_edge
  %indvars.iv139 = phi i64 [ %i.ak, %.preheader92.preheader ], [ %indvars.iv.next140, %._crit_edge ] ; 4 uses
  %invariant.gep101 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv139 ; 2 uses
  %invariant.gep103 = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv139 ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep162, i64 %indvars.iv139 ; 2 uses
  br label %bb.d

.preheader91:                                     ; preds = %._crit_edge, %.preheader92.lr.ph, %.preheader93
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !14 ; 4 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.preheader90.lr.ph, label %.preheader89

.preheader90.lr.ph:                               ; preds = %.preheader91
  %i.ao = icmp slt i32 %spec.select, 38
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 9728
  br i1 %i.ao, label %.preheader90.us.preheader, label %.preheader89

.preheader90.us.preheader:                        ; preds = %.preheader90.lr.ph
  %i.aq = sext i32 %spec.select to i64
  br label %.preheader90.us

.preheader90.us:                                  ; preds = %.preheader90.us.preheader, %._crit_edge107.us
  %indvars.iv147 = phi i64 [ 0, %.preheader90.us.preheader ], [ %indvars.iv.next148, %._crit_edge107.us ] ; 4 uses
  %i.ar = getelementptr inbounds nuw [320 x i8], ptr %4, i64 %indvars.iv147
  %invariant.gep108.us = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv147
  %invariant.gep110.us = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv147
  br label %bb.c

bb.c:                                             ; preds = %.preheader90.us, %bb.c
  %indvars.iv143 = phi i64 [ %i.aq, %.preheader90.us ], [ %indvars.iv.next144, %bb.c ] ; 4 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv143 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i32, ptr %i.at, align 4, !tbaa !14
  %gep109.us = getelementptr inbounds nuw [256 x i8], ptr %invariant.gep108.us, i64 %indvars.iv143
  store i32 %i.au, ptr %gep109.us, align 4, !tbaa !14
end_hunk_0

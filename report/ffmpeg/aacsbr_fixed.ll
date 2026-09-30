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
  %gep335 = getelementptr inbounds nuw [384 x i8], ptr %invariant.gep334, i64 %i.fp
  %i.hs = load i64, ptr %gep335, align 4          ; 2 uses
  %sext.i240 = shl i64 %i.hs, 32
  %i.ht = ashr exact i64 %sext.i240, 32
  %i.hu = mul nsw i64 %i.ht, %i.fu
  %i.hv = lshr i64 %i.hu, 29
  %.sroa.0.0.insert.insert.i242 = add i64 %i.fx, %i.hs
  %.sroa.0.0.extract.trunc.i.i243 = trunc i64 %i.hv to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i244 = lshr i64 %.sroa.0.0.insert.insert.i242, 32 ; 2 uses
  %i.hw = add i32 %.sroa.0.0.extract.trunc.i.i243, 1073741824
  %i.hx = icmp slt i32 %i.hw, 1                   ; 2 uses
  %i.hy = add nuw nsw i64 %.sroa.5.0.extract.shift.i.i244, 1
  %i.hz = and i64 %i.hy, 4294967295
  %.sroa.5.0.i.i245 = select i1 %i.hx, i64 %i.hz, i64 %.sroa.5.0.extract.shift.i.i244 ; 2 uses
  %i.ia = zext i1 %i.hx to i32
  %.sroa.0.0.i.i246 = ashr i32 %.sroa.0.0.extract.trunc.i.i243, %i.ia ; 2 uses
  %.sroa.2.0.insert.shift.i.i247 = shl nuw i64 %.sroa.5.0.i.i245, 32
  %.sroa.02.0.insert.ext.i.i248 = zext i32 %.sroa.0.0.i.i246 to i64
  %.sroa.02.0.insert.insert.i.i249 = or disjoint i64 %.sroa.2.0.insert.shift.i.i247, %.sroa.02.0.insert.ext.i.i248
  %.sroa.7.0.extract.trunc11.i250 = trunc nuw i64 %.sroa.5.0.i.i245 to i32
  %i.ib = icmp eq i32 %.sroa.0.0.i.i246, 0
  %i.ic = icmp slt i32 %.sroa.7.0.extract.trunc11.i250, -149
  %or.cond.i251 = select i1 %i.ib, i1 true, i1 %i.ic
  %..i252 = select i1 %or.cond.i251, i64 -639950127104, i64 %.sroa.02.0.insert.insert.i.i249 ; 3 uses
  %.sroa.012.0.extract.trunc.i253 = trunc i64 %i.fo to i32 ; 2 uses
  %.sroa.414.0.extract.shift.i254 = lshr i64 %i.fo, 32 ; 3 uses
  %.sroa.414.0.extract.trunc.i255 = trunc nuw i64 %.sroa.414.0.extract.shift.i254 to i32
  %.sroa.09.0.extract.trunc.i256 = trunc i64 %..i252 to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i257 = lshr i64 %..i252, 32 ; 3 uses
  %.sroa.4.0.extract.trunc.i258 = trunc nuw i64 %.sroa.4.0.extract.shift.i257 to i32
  %i.id = sub nsw i32 %.sroa.414.0.extract.trunc.i255, %.sroa.4.0.extract.trunc.i258 ; 5 uses
  %i.ie = icmp slt i32 %i.id, -31
  br i1 %i.ie, label %av_add_sf.exit296, label %bb.o

bb.o:                                             ; preds = %av_add_sf.exit
  %i.if = icmp slt i32 %i.id, 0
  br i1 %i.if, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ig = sub nsw i32 0, %i.id
  %i.ih = ashr i32 %.sroa.012.0.extract.trunc.i253, %i.ig
  %i.ii = add nsw i32 %i.ih, %.sroa.09.0.extract.trunc.i256 ; 2 uses
  %i.ij = add i32 %i.ii, 1073741824
  %i.ik = icmp slt i32 %i.ij, 1                   ; 2 uses
  %i.il = zext i1 %i.ik to i32
  %.sroa.0.0.i.i280 = ashr i32 %i.ii, %i.il       ; 4 uses
  %.not.i.i281 = icmp eq i32 %.sroa.0.0.i.i280, 0
  br i1 %.not.i.i281, label %av_normalize_sf.exit.i290, label %.preheader.i.i282

.preheader.i.i282:                                ; preds = %bb.p
  %i.im = zext i1 %i.ik to i64
  %.sroa.5.0.i.i283 = add nuw nsw i64 %.sroa.4.0.extract.shift.i257, %i.im
  %.sroa.8.0.extract.trunc.i.i284 = trunc i64 %.sroa.5.0.i.i283 to i32 ; 2 uses
  %i.in = add i32 %.sroa.0.0.i.i280, 536870911
  %i.io = icmp ult i32 %i.in, 1073741823
  br i1 %i.io, label %.lr.ph.i.i293, label %._crit_edge.i.i285

.lr.ph.i.i293:                                    ; preds = %.preheader.i.i282, %.lr.ph.i.i293
  %.sroa.0.08.i.i294 = phi i32 [ %i.ip, %.lr.ph.i.i293 ], [ %.sroa.0.0.i.i280, %.preheader.i.i282 ]
  %.sroa.8.07.i.i295 = phi i32 [ %i.iq, %.lr.ph.i.i293 ], [ %.sroa.8.0.extract.trunc.i.i284, %.preheader.i.i282 ]
  %i.ip = shl nsw i32 %.sroa.0.08.i.i294, 1       ; 3 uses
  %i.iq = add nsw i32 %.sroa.8.07.i.i295, -1      ; 2 uses
  %i.ir = add nsw i32 %i.ip, 536870911
  %i.is = icmp ult i32 %i.ir, 1073741823
  br i1 %i.is, label %.lr.ph.i.i293, label %._crit_edge.i.i285, !llvm.loop !2

._crit_edge.i.i285:                               ; preds = %.lr.ph.i.i293, %.preheader.i.i282
  %.sroa.8.0.lcssa.i.i286 = phi i32 [ %.sroa.8.0.extract.trunc.i.i284, %.preheader.i.i282 ], [ %i.iq, %.lr.ph.i.i293 ] ; 2 uses
  %.sroa.0.0.lcssa.i.i287 = phi i32 [ %.sroa.0.0.i.i280, %.preheader.i.i282 ], [ %i.ip, %.lr.ph.i.i293 ]
  %i.it = icmp slt i32 %.sroa.8.0.lcssa.i.i286, -149
  %spec.select.i.i288 = call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i.i286, i32 -149)
  %spec.select6.i.i289 = select i1 %i.it, i32 0, i32 %.sroa.0.0.lcssa.i.i287
  %i.iu = zext i32 %spec.select.i.i288 to i64
  %i.iv = shl nuw i64 %i.iu, 32
  %i.iw = zext i32 %spec.select6.i.i289 to i64
  %i.ix = or disjoint i64 %i.iv, %i.iw
  br label %av_normalize_sf.exit.i290

av_normalize_sf.exit.i290:                        ; preds = %._crit_edge.i.i285, %bb.p
  %.sroa.05.0.insert.insert.i.i291 = phi i64 [ -639950127104, %bb.p ], [ %i.ix, %._crit_edge.i.i285 ] ; 2 uses
  %.sroa.5.0.extract.shift.i292 = lshr i64 %.sroa.05.0.insert.insert.i.i291, 32
  br label %av_add_sf.exit296

bb.q:                                             ; preds = %bb.o
  %i.iy = icmp samesign ult i32 %i.id, 32
  br i1 %i.iy, label %bb.r, label %av_add_sf.exit296

bb.r:                                             ; preds = %bb.q
  %i.iz = ashr i32 %.sroa.09.0.extract.trunc.i256, %i.id
  %i.ja = add nsw i32 %i.iz, %.sroa.012.0.extract.trunc.i253 ; 2 uses
  %i.jb = add i32 %i.ja, 1073741824
  %i.jc = icmp slt i32 %i.jb, 1                   ; 2 uses
  %i.jd = zext i1 %i.jc to i32
  %.sroa.0.0.i24.i264 = ashr i32 %i.ja, %i.jd     ; 4 uses
  %.not.i29.i265 = icmp eq i32 %.sroa.0.0.i24.i264, 0
  br i1 %.not.i29.i265, label %av_normalize_sf.exit41.i274, label %.preheader.i30.i266

.preheader.i30.i266:                              ; preds = %bb.r
  %i.je = zext i1 %i.jc to i64
  %.sroa.5.0.i23.i267 = add nuw nsw i64 %.sroa.414.0.extract.shift.i254, %i.je
  %.sroa.8.0.extract.trunc.i31.i268 = trunc i64 %.sroa.5.0.i23.i267 to i32 ; 2 uses
  %i.jf = add i32 %.sroa.0.0.i24.i264, 536870911
  %i.jg = icmp ult i32 %i.jf, 1073741823
  br i1 %i.jg, label %.lr.ph.i38.i277, label %._crit_edge.i32.i269

.lr.ph.i38.i277:                                  ; preds = %.preheader.i30.i266, %.lr.ph.i38.i277
  %.sroa.0.08.i39.i278 = phi i32 [ %i.jh, %.lr.ph.i38.i277 ], [ %.sroa.0.0.i24.i264, %.preheader.i30.i266 ]
  %.sroa.8.07.i40.i279 = phi i32 [ %i.ji, %.lr.ph.i38.i277 ], [ %.sroa.8.0.extract.trunc.i31.i268, %.preheader.i30.i266 ]
  %i.jh = shl nsw i32 %.sroa.0.08.i39.i278, 1     ; 3 uses
  %i.ji = add nsw i32 %.sroa.8.07.i40.i279, -1    ; 2 uses
  %i.jj = add nsw i32 %i.jh, 536870911
  %i.jk = icmp ult i32 %i.jj, 1073741823
  br i1 %i.jk, label %.lr.ph.i38.i277, label %._crit_edge.i32.i269, !llvm.loop !2

._crit_edge.i32.i269:                             ; preds = %.lr.ph.i38.i277, %.preheader.i30.i266
  %.sroa.8.0.lcssa.i33.i270 = phi i32 [ %.sroa.8.0.extract.trunc.i31.i268, %.preheader.i30.i266 ], [ %i.ji, %.lr.ph.i38.i277 ] ; 2 uses
  %.sroa.0.0.lcssa.i34.i271 = phi i32 [ %.sroa.0.0.i24.i264, %.preheader.i30.i266 ], [ %i.jh, %.lr.ph.i38.i277 ]
  %i.jl = icmp slt i32 %.sroa.8.0.lcssa.i33.i270, -149
  %spec.select.i35.i272 = call i32 @llvm.smax.i32(i32 %.sroa.8.0.lcssa.i33.i270, i32 -149)
  %spec.select6.i36.i273 = select i1 %i.jl, i32 0, i32 %.sroa.0.0.lcssa.i34.i271
  %i.jm = zext i32 %spec.select.i35.i272 to i64
  %i.jn = shl nuw i64 %i.jm, 32
  %i.jo = zext i32 %spec.select6.i36.i273 to i64
  %i.jp = or disjoint i64 %i.jn, %i.jo
  br label %av_normalize_sf.exit41.i274

av_normalize_sf.exit41.i274:                      ; preds = %._crit_edge.i32.i269, %bb.r
  %.sroa.05.0.insert.insert.i37.i275 = phi i64 [ -639950127104, %bb.r ], [ %i.jp, %._crit_edge.i32.i269 ] ; 2 uses
  %.sroa.5.0.extract.shift18.i276 = lshr i64 %.sroa.05.0.insert.insert.i37.i275, 32
  br label %av_add_sf.exit296

av_add_sf.exit296:                                ; preds = %av_add_sf.exit, %av_normalize_sf.exit.i290, %bb.q, %av_normalize_sf.exit41.i274
  %.sroa.016.0.i259 = phi i64 [ %..i252, %av_add_sf.exit ], [ %.sroa.05.0.insert.insert.i.i291, %av_normalize_sf.exit.i290 ], [ %.sroa.05.0.insert.insert.i37.i275, %av_normalize_sf.exit41.i274 ], [ %i.fo, %bb.q ]
  %.sroa.5.0.i260 = phi i64 [ %.sroa.4.0.extract.shift.i257, %av_add_sf.exit ], [ %.sroa.5.0.extract.shift.i292, %av_normalize_sf.exit.i290 ], [ %.sroa.5.0.extract.shift18.i276, %av_normalize_sf.exit41.i274 ], [ %.sroa.414.0.extract.shift.i254, %bb.q ]
  %.sroa.5.0.insert.shift.i261 = shl nuw i64 %.sroa.5.0.i260, 32
  %.sroa.016.0.insert.ext.i262 = and i64 %.sroa.016.0.i259, 4294967295
  %.sroa.016.0.insert.insert.i263 = or disjoint i64 %.sroa.5.0.insert.shift.i261, %.sroa.016.0.insert.ext.i262 ; 2 uses
  %indvars.iv.next385 = add nuw nsw i64 %indvars.iv384, 1 ; 2 uses
  %exitcond388.not = icmp eq i64 %indvars.iv.next385, %wide.trip.count387
  br i1 %exitcond388.not, label %bb.s, label %bb.j, !llvm.loop !255

bb.s:                                             ; preds = %av_add_sf.exit296
  store i64 %.sroa.016.0.insert.insert.i, ptr %i.fj, align 8
  store i64 %.sroa.016.0.insert.insert.i263, ptr %i.fl, align 8
  %indvars.iv.next390 = add nuw nsw i64 %indvars.iv389, 1 ; 2 uses
  %exitcond393.not = icmp eq i64 %indvars.iv.next390, %wide.trip.count392
  br i1 %exitcond393.not, label %.loopexit, label %bb.i, !llvm.loop !256

bb.t:                                             ; preds = %bb.h, %bb.g, %bb.f
  %gep444 = getelementptr inbounds nuw [384 x i8], ptr %invariant.gep443, i64 %indvars.iv397
  %i.jq = getelementptr inbounds nuw [384 x i8], ptr %i.i, i64 %indvars.iv397
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %.preheader, %bb.t
  %.0213 = phi ptr [ %gep444, %bb.t ], [ %5, %.preheader ], [ %5, %bb.s ]
  %.0212 = phi ptr [ %i.jq, %bb.t ], [ %6, %.preheader ], [ %6, %bb.s ]
  %i.jr = load ptr, ptr %i.dt, align 8, !tbaa !260
  %gep354 = getelementptr [512 x i8], ptr %invariant.gep353, i64 %indvars.iv397 ; 3 uses
  %i.js = add nuw nsw i64 %indvars.iv397, 2
  call void %i.jr(ptr noundef %gep354, ptr noundef %i.dv, ptr noundef %.0213, i32 noundef %i.g, i64 noundef %i.js) #12
  %i.jt = load i32, ptr %4, align 4, !tbaa !14
  %i.ju = zext i32 %i.jt to i64
  %.not230 = icmp eq i64 %indvars.iv400, %i.ju
  br i1 %.not230, label %bb.w, label %bb.u

bb.u:                                             ; preds = %.loopexit
  %i.jv = load i32, ptr %i.dr, align 4, !tbaa !14
  %i.jw = zext i32 %i.jv to i64
  %.not231 = icmp eq i64 %indvars.iv400, %i.jw
  br i1 %.not231, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.jx = sext i32 %.1215345 to i64
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.jx
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !27
  call void %i.jz(ptr noundef %gep354, ptr noundef nonnull %i.fb, ptr noundef %.0212, i32 noundef %.1218344, i32 noundef %i.e, i32 noundef %i.g) #12
  br label %.critedge

bb.w:                                             ; preds = %bb.u, %.loopexit
  %i.ka = and i32 %.1215345, 1                    ; 3 uses
  %i.kb = add nsw i32 %.1215345, %i.dy
  %i.kc = and i32 %i.kb, 2
  %i.kd = sub nsw i32 1, %i.kc                    ; 3 uses
  %i.ke = sub nsw i32 0, %i.ka
  %i.kf = xor i32 %i.kd, %i.ke
  %i.kg = add nsw i32 %i.kf, %i.ka
  %i.kh = zext nneg i32 %i.ka to i64
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %gep354, i64 %i.kh ; 3 uses
  br i1 %i.dz, label %.lr.ph343, label %._crit_edge

.lr.ph343:                                        ; preds = %bb.w, %bb.ac
  %indvars.iv394 = phi i64 [ %indvars.iv.next395, %bb.ac ], [ 0, %bb.w ] ; 4 uses
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv394 ; 4 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !76 ; 4 uses
  %i.km = sub nsw i32 22, %i.kl                   ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kj, i64 12
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !76 ; 4 uses
  %i.kq = sub nsw i32 22, %i.kp                   ; 2 uses
  %i.kr = icmp slt i32 %i.kl, 22
  %i.ks = icmp slt i32 %i.kp, 22
  %or.cond.not = select i1 %i.kr, i1 %i.ks, i1 false
  br i1 %or.cond.not, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %.lr.ph343
  %i.kt = icmp sgt i32 %i.kl, -10
  br i1 %i.kt, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ku = sub nsw i32 21, %i.kl
  %i.kv = shl nuw nsw i32 1, %i.ku
  %i.kw = load i32, ptr %i.kj, align 4, !tbaa !77
  %i.kx = mul nsw i32 %i.kw, %i.kd
  %i.ky = add i32 %i.kx, %i.kv
  %i.kz = ashr i32 %i.ky, %i.km
  %.idx425 = shl nuw nsw i64 %indvars.iv394, 3
  %i.la = getelementptr inbounds nuw i8, ptr %i.ki, i64 %.idx425 ; 2 uses
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !14
  %i.lc = add i32 %i.kz, %i.lb
  store i32 %i.lc, ptr %i.la, align 4, !tbaa !14
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ld = icmp sgt i32 %i.kp, -10
  br i1 %i.ld, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.le = sub nsw i32 21, %i.kp
  %i.lf = shl nuw nsw i32 1, %i.le
  %i.lg = load i32, ptr %i.kn, align 4, !tbaa !77
  %i.lh = mul nsw i32 %i.lg, %i.kg
  %i.li = add i32 %i.lh, %i.lf
  %i.lj = ashr i32 %i.li, %i.kq
  %.idx426 = shl nuw nsw i64 %indvars.iv394, 3
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ki, i64 %.idx426
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8 ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !14
  %i.ln = add i32 %i.lj, %i.lm
  store i32 %i.ln, ptr %i.ll, align 4, !tbaa !14
  br label %bb.ac

bb.ab:                                            ; preds = %.lr.ph343
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.39, i32 noundef %i.km, i32 noundef %i.kq) #12
  br label %.critedge236

bb.ac:                                            ; preds = %bb.z, %bb.aa
  %indvars.iv.next395 = add nuw nsw i64 %indvars.iv394, 2 ; 3 uses
  %i.lo = trunc i64 %indvars.iv.next395 to i32
  %7 = or disjoint i32 %i.lo, 1
  %i.lp = icmp slt i32 %7, %i.g
  br i1 %i.lp, label %.lr.ph343, label %._crit_edge.loopexit, !llvm.loop !257

._crit_edge.loopexit:                             ; preds = %bb.ac
  %i.lq = trunc nuw i64 %indvars.iv.next395 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.w
  %.1211.lcssa = phi i32 [ 0, %bb.w ], [ %i.lq, %._crit_edge.loopexit ] ; 2 uses
  br i1 %.not232, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge
  %i.lr = zext nneg i32 %.1211.lcssa to i64
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.lr ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !76 ; 4 uses
  %i.lv = sub nsw i32 22, %i.lu                   ; 2 uses
  %i.lw = icmp sgt i32 %i.lu, 21
  br i1 %i.lw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.40, i32 noundef %i.lv) #12
  br label %.critedge236

bb.af:                                            ; preds = %bb.ad
  %i.lx = icmp sgt i32 %i.lu, -10
  br i1 %i.lx, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %bb.af
  %i.ly = sub nsw i32 21, %i.lu
  %i.lz = shl nuw nsw i32 1, %i.ly
  %i.ma = load i32, ptr %i.ls, align 4, !tbaa !77
  %i.mb = mul nsw i32 %i.ma, %i.kd
  %i.mc = add i32 %i.mb, %i.lz
  %i.md = ashr i32 %i.mc, %i.lv
  %i.me = shl nuw nsw i32 %.1211.lcssa, 1
  %i.mf = zext nneg i32 %i.me to i64
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %i.mf ; 2 uses
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !14
  %i.mi = add i32 %i.md, %i.mh
  store i32 %i.mi, ptr %i.mg, align 4, !tbaa !14
  br label %.critedge

.critedge:                                        ; preds = %bb.ag, %bb.af, %._crit_edge, %bb.v
  %i.mj = add nsw i32 %.1218344, %i.g
  %i.mk = and i32 %i.mj, 511                      ; 2 uses
  %i.ml = add nsw i32 %.1215345, 1
  %i.mm = and i32 %i.ml, 3                        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %indvars.iv.next398 = add nuw nsw i64 %indvars.iv397, 1 ; 2 uses
  %i.mn = load i8, ptr %i.ey, align 1, !tbaa !13  ; 2 uses
  %i.mo = zext i8 %i.mn to i64
  %i.mp = shl nuw nsw i64 %i.mo, 1
  %i.mq = icmp samesign ult i64 %indvars.iv.next398, %i.mp
  br i1 %i.mq, label %bb.f, label %.loopexit297.loopexit, !llvm.loop !258

._crit_edge359:                                   ; preds = %.loopexit297, %.loopexit301
  %.0217.lcssa = phi i32 [ %i.k, %.loopexit301 ], [ %.1218.lcssa, %.loopexit297 ]
  %.0214.lcssa = phi i32 [ %i.m, %.loopexit301 ], [ %.1215.lcssa, %.loopexit297 ]
  store i32 %.0217.lcssa, ptr %i.j, align 8, !tbaa !66
  store i32 %.0214.lcssa, ptr %i.l, align 4, !tbaa !259
  br label %bb.ah

.critedge236:                                     ; preds = %bb.ab, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.ah

bb.ah:                                            ; preds = %.critedge236, %._crit_edge359
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

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ops?download=true
inline.NumInlined: 777
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 223
loop-unroll.NumUnrolled: 270
begin_hunk_0_@ggml_compute_forward_flash_attn_ext:bb.a
.lr.ph.sink.split.i.i:                            ; preds = %bb.bo
  %i.uy = icmp ugt i32 %i.rm, %i.uq               ; 2 uses
  %i.uz = sub nuw i32 %i.uq, %i.rm
  %i.va = shl i32 %i.uz, 1
  %i.vb = or disjoint i32 %i.va, 1
  %i.vc = add nuw i32 %i.uq, 1
  %.sink1035.i.i = select i1 %i.uy, i32 %i.vc, i32 %i.vb
  %exp2f508.sink.i.i = select i1 %i.uy, float %exp2f.i.i, float %exp2f508.i.i
  %i.vd = uitofp i32 %.sink1035.i.i to float
  %i.ve = tail call float @powf(float noundef %exp2f508.sink.i.i, float noundef %i.vd) #18
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.sink.split.i.i, %bb.bo
  %i.vf = phi float [ 1.000000e+00, %bb.bo ], [ %i.ve, %.lr.ph.sink.split.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false), !tbaa !43
  store <8 x float> splat (float -inf), ptr %i.b, align 16, !tbaa !43
  store <8 x float> splat (float -inf), ptr %i.mu, align 16, !tbaa !43
  store <8 x float> splat (float -inf), ptr %i.mv, align 16, !tbaa !43
  store <8 x float> splat (float -inf), ptr %i.mw, align 16, !tbaa !43
  store <8 x float> splat (float -inf), ptr %i.mx, align 16, !tbaa !43
  store <8 x float> splat (float -inf), ptr %i.my, align 16, !tbaa !43
  store <8 x float> splat (float -inf), ptr %i.mz, align 16, !tbaa !43
  store <8 x float> splat (float -inf), ptr %i.na, align 16, !tbaa !43
  %i.vg = load ptr, ptr %i.ms, align 8, !tbaa !48 ; 3 uses
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.vg, i64 %i.sc ; 7 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 %i.sd ; 31 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 16384 ; 6 uses
  %i.vk = getelementptr i8, ptr %i.vi, i64 32768  ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.vk, i8 0, i64 %i.se, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16384) %i.vj, i8 0, i64 16384, i1 false)
  %i.vl = mul i64 %i.ur, %i.ol                    ; 5 uses
  %i.vm = mul i64 %i.um, %i.oq                    ; 5 uses
  %sext977.i.i = shl i64 %.recomposed, 32
  %i.vn = ashr exact i64 %sext977.i.i, 32         ; 7 uses
  %wide.trip.count.i.i = zext nneg i32 %i.uw to i64 ; 6 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 3 uses
  %i.vo = icmp slt i32 %..i262.i, 4
  br i1 %i.vo, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 124
  br label %bb.bq

.preheader741.i.i.unr-lcssa:                      ; preds = %bb.bq
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader741.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader741.i.i.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.3, %.preheader741.i.i.unr-lcssa ]
  %lcmp.mod577 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod577)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.bp ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bp ]
  %i.vp = load ptr, ptr %i.sf, align 8, !tbaa !37
  %i.vq = add nsw i64 %indvars.iv.i.i.epil, %i.vn
  %i.vr = mul i64 %i.vq, %i.op
  %i.vs = getelementptr i8, ptr %i.vp, i64 %i.vr
  %i.vt = getelementptr i8, ptr %i.vs, i64 %i.vl
  %i.vu = getelementptr i8, ptr %i.vt, i64 %i.vm
  %i.vv = mul nsw i64 %indvars.iv.i.i.epil, %i.on
  %i.vw = getelementptr inbounds [4 x i8], ptr %i.vh, i64 %i.vv
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.vw, ptr align 4 %i.vu, i64 %i.sg, i1 false)
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader741.i.i, label %bb.bp, !llvm.loop !1393

.preheader741.i.i:                                ; preds = %bb.bp, %.preheader741.i.i.unr-lcssa
  %i.vx = getelementptr [4 x i8], ptr %i.vk, i64 %i.ry ; 6 uses
  %i.vy = getelementptr [4 x i8], ptr %i.vx, i64 %i.ry ; 4 uses
  %i.vz = insertelement <4 x i64> poison, i64 %i.ur, i64 0
  %i.wa = insertelement <4 x i64> %i.vz, i64 %i.um, i64 1
  %i.wb = shufflevector <4 x i64> %i.wa, <4 x i64> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.wc = sdiv <4 x i64> %i.wb, %i.re             ; 3 uses
  %i.wd = icmp samesign ult i32 %..i262.i, 64
  br i1 %i.wd, label %.lr.ph786.preheader.i.i, label %._crit_edge.i.i

.lr.ph786.preheader.i.i:                          ; preds = %.preheader741.i.i
  %scevgep.i.i = getelementptr i8, ptr %i.vg, i64 %i.tl
  %i.we = mul i64 %i.sg, %wide.trip.count.i.i
  %scevgep887.i.i = getelementptr i8, ptr %scevgep.i.i, i64 %i.we
  %narrow.i.i = sub nuw nsw i32 64, %i.uw
  %i.wf = zext nneg i32 %narrow.i.i to i64
  %i.wg = mul i64 %i.sg, %i.wf
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep887.i.i, i8 0, i64 %i.wg, i1 false)
  br label %._crit_edge.i.i

bb.bq:                                            ; preds = %bb.bq, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.3, %bb.bq ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.bq ]
  %i.wh = load ptr, ptr %i.sf, align 8, !tbaa !37
  %i.wi = add nsw i64 %indvars.iv.i.i, %i.vn
  %i.wj = mul i64 %i.wi, %i.op
  %i.wk = getelementptr i8, ptr %i.wh, i64 %i.wj
  %i.wl = getelementptr i8, ptr %i.wk, i64 %i.vl
  %i.wm = getelementptr i8, ptr %i.wl, i64 %i.vm
  %i.wn = mul nsw i64 %indvars.iv.i.i, %i.on
  %i.wo = getelementptr inbounds [4 x i8], ptr %i.vh, i64 %i.wn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.wo, ptr align 4 %i.wm, i64 %i.sg, i1 false)
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.wp = load ptr, ptr %i.sf, align 8, !tbaa !37
  %i.wq = add nsw i64 %indvars.iv.next.i.i, %i.vn
  %i.wr = mul i64 %i.wq, %i.op
  %i.ws = getelementptr i8, ptr %i.wp, i64 %i.wr
  %i.wt = getelementptr i8, ptr %i.ws, i64 %i.vl
  %i.wu = getelementptr i8, ptr %i.wt, i64 %i.vm
  %i.wv = mul nsw i64 %indvars.iv.next.i.i, %i.on
  %i.ww = getelementptr inbounds [4 x i8], ptr %i.vh, i64 %i.wv
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ww, ptr align 4 %i.wu, i64 %i.sg, i1 false)
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.wx = load ptr, ptr %i.sf, align 8, !tbaa !37
  %i.wy = add nsw i64 %indvars.iv.next.i.i.1, %i.vn
  %i.wz = mul i64 %i.wy, %i.op
  %i.xa = getelementptr i8, ptr %i.wx, i64 %i.wz
  %i.xb = getelementptr i8, ptr %i.xa, i64 %i.vl
  %i.xc = getelementptr i8, ptr %i.xb, i64 %i.vm
  %i.xd = mul nsw i64 %indvars.iv.next.i.i.1, %i.on
  %i.xe = getelementptr inbounds [4 x i8], ptr %i.vh, i64 %i.xd
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.xe, ptr align 4 %i.xc, i64 %i.sg, i1 false)
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.xf = load ptr, ptr %i.sf, align 8, !tbaa !37
  %i.xg = add nsw i64 %indvars.iv.next.i.i.2, %i.vn
  %i.xh = mul i64 %i.xg, %i.op
  %i.xi = getelementptr i8, ptr %i.xf, i64 %i.xh
  %i.xj = getelementptr i8, ptr %i.xi, i64 %i.vl
  %i.xk = getelementptr i8, ptr %i.xj, i64 %i.vm
  %i.xl = mul nsw i64 %indvars.iv.next.i.i.2, %i.on
  %i.xm = getelementptr inbounds [4 x i8], ptr %i.vh, i64 %i.xl
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.xm, ptr align 4 %i.xk, i64 %i.sg, i1 false)
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader741.i.i.unr-lcssa, label %bb.bq, !llvm.loop !1394

._crit_edge.i.i:                                  ; preds = %.lr.ph786.preheader.i.i, %.preheader741.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.vy, i8 0, i64 %i.sd, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.vx, i8 0, i64 %i.se, i1 false)
  br i1 %i.sh, label %.lr.ph830.i.i, label %._crit_edge831.i.i

.lr.ph830.i.i:                                    ; preds = %._crit_edge.i.i
  %i.xn = shufflevector <4 x i64> %i.wc, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.xo = shl <2 x i64> %i.xn, splat (i64 32)
  %i.xp = ashr exact <2 x i64> %i.xo, splat (i64 32) ; 2 uses
  %i.xq = extractelement <2 x i64> %i.xp, i64 1
  %i.xr = mul i64 %i.xq, %i.pg                    ; 3 uses
  %i.xs = extractelement <2 x i64> %i.xp, i64 0
  %i.xt = mul i64 %i.xs, %i.pl                    ; 3 uses
  %i.xu = shl nuw nsw i32 %i.uw, 6                ; 2 uses
  %i.xv = zext nneg i32 %i.xu to i64              ; 5 uses
  %i.xw = extractelement <4 x i64> %i.wc, i64 3
  %i.xx = shl i64 %i.xw, 32
  %i.xy = ashr exact i64 %i.xx, 32
  %i.xz = mul i64 %i.xy, %i.pz
  %i.ya = extractelement <4 x i64> %i.wc, i64 2
  %i.yb = shl i64 %i.ya, 32
  %i.yc = ashr exact i64 %i.yb, 32
  %i.yd = mul i64 %i.yc, %i.qd
  %umax = tail call i64 @llvm.umax.i64(i64 %i.xv, i64 15)
  %i.ye = and i64 %umax, 8136                     ; 2 uses
  %i.yf = sub nsw i64 %i.xv, %i.ye                ; 5 uses
  %scevgep374.a = getelementptr i8, ptr %i.vg, i64 32512
  %i.yg = getelementptr i8, ptr %scevgep374.a, i64 %i.tt
  %scevgep375 = getelementptr i8, ptr %i.yg, i64 %i.tr
  %min.iters.check310.a = icmp eq i64 %i.ye, %i.xv
  %min.iters.check312 = icmp ult i64 %i.yf, 32
  %i.yh = and i64 %i.yf, 24
  %n.vec314 = and i64 %i.yf, -32                  ; 4 uses
  %cmp.n327 = icmp eq i64 %i.yf, %n.vec314
  %min.epilog.iters.check331 = icmp eq i64 %i.yh, 0
  br label %bb.br

._crit_edge831.i.i:                               ; preds = %.critedge.i.i, %._crit_edge.i.i
  br i1 %.not510.i.i, label %.lr.ph837.i.i, label %.lr.ph834.preheader.i.i

bb.br:                                            ; preds = %.critedge.i.i, %.lr.ph830.i.i
  %indvar = phi i64 [ %indvar.next, %.critedge.i.i ], [ 0, %.lr.ph830.i.i ] ; 2 uses
  %indvars.iv894.i.i = phi i64 [ %indvars.iv.next895.i.i, %.critedge.i.i ], [ %i.pj, %.lr.ph830.i.i ] ; 5 uses
  %.0440826.i.i = phi i64 [ %i.bgy, %.critedge.i.i ], [ 0, %.lr.ph830.i.i ] ; 5 uses
  %smin579 = tail call i64 @llvm.smin.i64(i64 %indvars.iv894.i.i, i64 64)
  %i.yi = and i64 %smin579, 4294967295
  %i.yj = add nsw i64 %i.yi, -1
  %i.yk = mul i64 %i.tp, %indvar                  ; 2 uses
  %smin372 = tail call i64 @llvm.smin.i64(i64 %indvars.iv894.i.i, i64 64)
  %i.yl = and i64 %smin372, 4294967295            ; 2 uses
  %i.ym = add nsw i64 %i.yl, -1
  %i.yn = mul i64 %i.pk, %i.ym
  %i.yo = shl nuw nsw i64 %i.yl, 2
  %scevgep376 = getelementptr i8, ptr %scevgep375, i64 %i.yo
  %smin = tail call i64 @llvm.smin.i64(i64 %indvars.iv894.i.i, i64 64)
  %i.yp = trunc i64 %smin to i32                  ; 2 uses
  %smax343 = tail call i32 @llvm.smax.i32(i32 %i.yp, i32 63)
  %i.yq = sub i32 %smax343, %i.yp                 ; 5 uses
  %i.yr = zext i32 %i.yq to i64
  %i.ys = add nuw nsw i64 %i.yr, 1                ; 10 uses
  %smin930.i.i = tail call i64 @llvm.smin.i64(i64 %indvars.iv894.i.i, i64 64) ; 3 uses
  %2 = and i64 %smin930.i.i, 4294967295           ; 12 uses
  %3 = sub nuw nsw i64 %i.pj, %.0440826.i.i       ; 2 uses
  br i1 %.not511.i.i, label %.lr.ph812.i.i, label %.lr.ph796.i.i

.lr.ph796.i.i:                                    ; preds = %bb.br
  %i.yt = load ptr, ptr %i.si, align 8, !tbaa !37
  %i.yu = load i64, ptr %i.sj, align 8, !tbaa !31
  %i.yv = load i64, ptr %i.sk, align 8, !tbaa !31
  %i.yw = srem i64 %i.ur, %i.yv
  %i.yx = load i64, ptr %i.sl, align 8, !tbaa !31
  %i.yy = mul i64 %i.yx, %i.yw
  %invariant.gep.i.i = getelementptr i8, ptr %i.yt, i64 %i.yy
  %i.yz = load i64, ptr %i.sm, align 8, !tbaa !31
  %i.za = srem i64 %i.um, %i.yz
  %i.zb = load i64, ptr %i.sn, align 8, !tbaa !31
  %i.zc = mul i64 %i.zb, %i.za
  %invariant.gep799.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.zc
  %invariant.gep801.i.i = getelementptr [2 x i8], ptr %invariant.gep799.i.i, i64 %.0440826.i.i
  %i.zd = icmp samesign ult i64 %3, 64
  %xtraiter580 = and i64 %smin930.i.i, 3          ; 3 uses
  %i.ze = icmp ult i64 %i.yj, 3
  %unroll_iter585 = and i64 %smin930.i.i, 4294967292
  %lcmp.mod582.not = icmp eq i64 %xtraiter580, 0
  %lcmp.mod584 = icmp ne i64 %xtraiter580, 0
  %min.iters.check413.a = icmp ult i32 %i.yq, 7
  %min.iters.check415 = icmp ult i32 %i.yq, 31
  %i.zf = and i64 %i.ys, 24
  %n.vec417 = and i64 %i.ys, 8589934560           ; 4 uses
  %i.zg = add nuw nsw i64 %2, %n.vec417
  %cmp.n422 = icmp eq i64 %i.ys, %n.vec417
  %min.epilog.iters.check426 = icmp eq i64 %i.zf, 0
  %n.vec429 = and i64 %i.ys, 8589934584           ; 3 uses
  %i.zh = add nuw nsw i64 %2, %n.vec429
  %cmp.n434 = icmp eq i64 %i.ys, %n.vec429
  br label %.lr.ph790.i.i

._crit_edge797.i.i:                               ; preds = %._crit_edge793.i.i
  br i1 %spec.select514.i.i.lcssa, label %.critedge.i.i, label %.lr.ph812.i.i

.lr.ph790.i.i:                                    ; preds = %._crit_edge793.i.i, %.lr.ph796.i.i
  %indvars.iv902.i.i = phi i64 [ 0, %.lr.ph796.i.i ], [ %indvars.iv.next903.i.i, %._crit_edge793.i.i ] ; 3 uses
  %.0438794.i.i = phi i1 [ true, %.lr.ph796.i.i ], [ %spec.select514.i.i.lcssa, %._crit_edge793.i.i ] ; 2 uses
  %i.zi = add nsw i64 %indvars.iv902.i.i, %i.vn
  %i.zj = mul i64 %i.zi, %i.yu
  %gep.i.i = getelementptr i8, ptr %invariant.gep801.i.i, i64 %i.zj ; 5 uses
  %.idx979.i.i.a = shl nuw nsw i64 %indvars.iv902.i.i, 8
  %invariant.gep1029.i.i = getelementptr inbounds nuw i8, ptr %i.vj, i64 %.idx979.i.i.a ; 8 uses
  br i1 %i.ze, label %.epil.preheader578, label %.lr.ph790.i.i.new

.preheader733.i.i.unr-lcssa:                      ; preds = %.lr.ph790.i.i.new
  br i1 %lcmp.mod582.not, label %.preheader733.i.i, label %.epil.preheader578

.epil.preheader578:                               ; preds = %.preheader733.i.i.unr-lcssa, %.lr.ph790.i.i
  %indvars.iv892.i.i.epil.init = phi i64 [ 0, %.lr.ph790.i.i ], [ %indvars.iv.next893.i.i.3, %.preheader733.i.i.unr-lcssa ]
  %.1787.i.i.epil.init = phi i1 [ %.0438794.i.i, %.lr.ph790.i.i ], [ %spec.select514.i.i.3, %.preheader733.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod584)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %.epil.preheader578
  %indvars.iv892.i.i.epil = phi i64 [ %indvars.iv892.i.i.epil.init, %.epil.preheader578 ], [ %indvars.iv.next893.i.i.epil, %bb.bs ] ; 3 uses
  %.1787.i.i.epil = phi i1 [ %.1787.i.i.epil.init, %.epil.preheader578 ], [ %spec.select514.i.i.epil, %bb.bs ]
  %epil.iter581 = phi i64 [ 0, %.epil.preheader578 ], [ %epil.iter581.next, %bb.bs ]
  %i.zk = getelementptr inbounds nuw [2 x i8], ptr %gep.i.i, i64 %indvars.iv892.i.i.epil
  %i.zl = load i16, ptr %i.zk, align 2, !tbaa !41
  %i.zm = zext i16 %i.zl to i64
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.zm
  %i.zo = load float, ptr %i.zn, align 4, !tbaa !43
  %i.zp = fmul float %i.vf, %i.zo                 ; 2 uses
  %gep1030.i.i.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1029.i.i, i64 %indvars.iv892.i.i.epil
  store float %i.zp, ptr %gep1030.i.i.epil, align 4, !tbaa !43
  %i.zq = fcmp oeq float %i.zp, -inf
  %spec.select514.i.i.epil = select i1 %i.zq, i1 %.1787.i.i.epil, i1 false ; 2 uses
  %indvars.iv.next893.i.i.epil = add nuw nsw i64 %indvars.iv892.i.i.epil, 1
  %epil.iter581.next = add i64 %epil.iter581, 1   ; 2 uses
  %epil.iter581.cmp.not = icmp eq i64 %epil.iter581.next, %xtraiter580
  br i1 %epil.iter581.cmp.not, label %.preheader733.i.i, label %bb.bs, !llvm.loop !1395

.preheader733.i.i:                                ; preds = %bb.bs, %.preheader733.i.i.unr-lcssa
  %spec.select514.i.i.lcssa = phi i1 [ %spec.select514.i.i.3, %.preheader733.i.i.unr-lcssa ], [ %spec.select514.i.i.epil, %bb.bs ] ; 2 uses
  br i1 %i.zd, label %iter.check423, label %._crit_edge793.i.i

iter.check423:                                    ; preds = %.preheader733.i.i
  br i1 %min.iters.check413.a, label %.lr.ph792.i.i.preheader, label %vector.main.loop.iter.check414

vector.main.loop.iter.check414:                   ; preds = %iter.check423
  br i1 %min.iters.check415, label %vec.epilog.ph427, label %vector.ph416

vector.ph416:                                     ; preds = %vector.main.loop.iter.check414
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1029.i.i, i64 %2
  br label %vector.body418

vector.body418:                                   ; preds = %vector.ph416, %vector.body418
  %index419 = phi i64 [ 0, %vector.ph416 ], [ %index.next420, %vector.body418 ] ; 2 uses
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %i.zr, i64 %index419 ; 4 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 32
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zs, i64 64
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zs, i64 96
  store <8 x float> splat (float -inf), ptr %i.zs, align 4, !tbaa !43
  store <8 x float> splat (float -inf), ptr %i.zt, align 4, !tbaa !43
  store <8 x float> splat (float -inf), ptr %i.zu, align 4, !tbaa !43
  store <8 x float> splat (float -inf), ptr %i.zv, align 4, !tbaa !43
  %index.next420 = add nuw i64 %index419, 32      ; 2 uses
  %i.zw = icmp eq i64 %index.next420, %n.vec417
  br i1 %i.zw, label %middle.block421, label %vector.body418, !llvm.loop !1396

middle.block421:                                  ; preds = %vector.body418
  br i1 %cmp.n422, label %._crit_edge793.i.i, label %vec.epilog.iter.check424

vec.epilog.iter.check424:                         ; preds = %middle.block421
  br i1 %min.epilog.iters.check426, label %.lr.ph792.i.i.preheader, label %vec.epilog.ph427, !prof !50

vec.epilog.ph427:                                 ; preds = %vector.main.loop.iter.check414, %vec.epilog.iter.check424
  %vec.epilog.resume.val428 = phi i64 [ %n.vec417, %vec.epilog.iter.check424 ], [ 0, %vector.main.loop.iter.check414 ]
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1029.i.i, i64 %2
  br label %vec.epilog.vector.body430

vec.epilog.vector.body430:                        ; preds = %vec.epilog.vector.body430, %vec.epilog.ph427
  %index431 = phi i64 [ %vec.epilog.resume.val428, %vec.epilog.ph427 ], [ %index.next432, %vec.epilog.vector.body430 ] ; 2 uses
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.zx, i64 %index431
  store <8 x float> splat (float -inf), ptr %i.zy, align 4, !tbaa !43
  %index.next432 = add nuw i64 %index431, 8       ; 2 uses
  %i.zz = icmp eq i64 %index.next432, %n.vec429
  br i1 %i.zz, label %vec.epilog.middle.block433, label %vec.epilog.vector.body430, !llvm.loop !1397

vec.epilog.middle.block433:                       ; preds = %vec.epilog.vector.body430
  br i1 %cmp.n434, label %._crit_edge793.i.i, label %.lr.ph792.i.i.preheader

.lr.ph792.i.i.preheader:                          ; preds = %iter.check423, %vec.epilog.iter.check424, %vec.epilog.middle.block433
  %indvars.iv899.i.i.ph = phi i64 [ %2, %iter.check423 ], [ %i.zg, %vec.epilog.iter.check424 ], [ %i.zh, %vec.epilog.middle.block433 ]
  br label %.lr.ph792.i.i

.lr.ph790.i.i.new:                                ; preds = %.lr.ph790.i.i, %.lr.ph790.i.i.new
  %indvars.iv892.i.i = phi i64 [ %indvars.iv.next893.i.i.3, %.lr.ph790.i.i.new ], [ 0, %.lr.ph790.i.i ] ; 6 uses
  %.1787.i.i = phi i1 [ %spec.select514.i.i.3, %.lr.ph790.i.i.new ], [ %.0438794.i.i, %.lr.ph790.i.i ]
  %niter586 = phi i64 [ %niter586.next.3, %.lr.ph790.i.i.new ], [ 0, %.lr.ph790.i.i ]
  %i.aaa = getelementptr inbounds nuw [2 x i8], ptr %gep.i.i, i64 %indvars.iv892.i.i
  %i.aab = load i16, ptr %i.aaa, align 2, !tbaa !41
  %i.aac = zext i16 %i.aab to i64
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.aac
  %i.aae = load float, ptr %i.aad, align 4, !tbaa !43
  %i.aaf = fmul float %i.vf, %i.aae               ; 2 uses
  %gep1030.i.i.a = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1029.i.i, i64 %indvars.iv892.i.i
  store float %i.aaf, ptr %gep1030.i.i.a, align 4, !tbaa !43
  %i.aag = fcmp oeq float %i.aaf, -inf
  %indvars.iv.next893.i.i = or disjoint i64 %indvars.iv892.i.i, 1 ; 2 uses
  %i.aah = getelementptr inbounds nuw [2 x i8], ptr %gep.i.i, i64 %indvars.iv.next893.i.i
  %i.aai = load i16, ptr %i.aah, align 2, !tbaa !41
  %i.aaj = zext i16 %i.aai to i64
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.aaj
  %i.aal = load float, ptr %i.aak, align 4, !tbaa !43
  %i.aam = fmul float %i.vf, %i.aal               ; 2 uses
  %gep1030.i.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1029.i.i, i64 %indvars.iv.next893.i.i
  store float %i.aam, ptr %gep1030.i.i.1, align 4, !tbaa !43
  %i.aan = fcmp oeq float %i.aam, -inf
  %indvars.iv.next893.i.i.1 = or disjoint i64 %indvars.iv892.i.i, 2 ; 2 uses
  %i.aao = getelementptr inbounds nuw [2 x i8], ptr %gep.i.i, i64 %indvars.iv.next893.i.i.1
  %i.aap = load i16, ptr %i.aao, align 2, !tbaa !41
  %i.aaq = zext i16 %i.aap to i64
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.aaq
  %i.aas = load float, ptr %i.aar, align 4, !tbaa !43
  %i.aat = fmul float %i.vf, %i.aas               ; 2 uses
  %gep1030.i.i.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1029.i.i, i64 %indvars.iv.next893.i.i.1
  store float %i.aat, ptr %gep1030.i.i.2, align 4, !tbaa !43
  %i.aau = fcmp oeq float %i.aat, -inf
  %indvars.iv.next893.i.i.2 = or disjoint i64 %indvars.iv892.i.i, 3 ; 2 uses
  %i.aav = getelementptr inbounds nuw [2 x i8], ptr %gep.i.i, i64 %indvars.iv.next893.i.i.2
  %i.aaw = load i16, ptr %i.aav, align 2, !tbaa !41
  %i.aax = zext i16 %i.aaw to i64
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.aax
  %i.aaz = load float, ptr %i.aay, align 4, !tbaa !43
  %i.aba = fmul float %i.vf, %i.aaz               ; 2 uses
  %gep1030.i.i.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1029.i.i, i64 %indvars.iv.next893.i.i.2
  store float %i.aba, ptr %gep1030.i.i.3, align 4, !tbaa !43
  %i.abb = fcmp oeq float %i.aba, -inf
  %i.abc = select i1 %i.abb, i1 %i.aau, i1 false
  %i.abd = select i1 %i.abc, i1 %i.aan, i1 false
  %i.abe = select i1 %i.abd, i1 %i.aag, i1 false
  %spec.select514.i.i.3 = select i1 %i.abe, i1 %.1787.i.i, i1 false ; 3 uses
  %indvars.iv.next893.i.i.3 = add nuw nsw i64 %indvars.iv892.i.i, 4 ; 2 uses
  %niter586.next.3 = add i64 %niter586, 4         ; 2 uses
  %niter586.ncmp.3 = icmp eq i64 %niter586.next.3, %unroll_iter585
  br i1 %niter586.ncmp.3, label %.preheader733.i.i.unr-lcssa, label %.lr.ph790.i.i.new, !llvm.loop !1398

._crit_edge793.i.i:                               ; preds = %.lr.ph792.i.i, %middle.block421, %vec.epilog.middle.block433, %.preheader733.i.i
  %indvars.iv.next903.i.i = add nuw nsw i64 %indvars.iv902.i.i, 1 ; 2 uses
  %exitcond906.not.i.i = icmp eq i64 %indvars.iv.next903.i.i, %wide.trip.count.i.i
  br i1 %exitcond906.not.i.i, label %._crit_edge797.i.i, label %.lr.ph790.i.i, !llvm.loop !1399

.lr.ph792.i.i:                                    ; preds = %.lr.ph792.i.i.preheader, %.lr.ph792.i.i
  %indvars.iv899.i.i = phi i64 [ %indvars.iv.next900.i.i, %.lr.ph792.i.i ], [ %indvars.iv899.i.i.ph, %.lr.ph792.i.i.preheader ] ; 3 uses
  %gep1032.i.i.a = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1029.i.i, i64 %indvars.iv899.i.i
  store float -inf, ptr %gep1032.i.i.a, align 4, !tbaa !43
  %indvars.iv.next900.i.i = add nuw nsw i64 %indvars.iv899.i.i, 1
  %i.abf = trunc nuw i64 %indvars.iv899.i.i to i32
  %i.abg = icmp slt i32 %i.abf, 63
  br i1 %i.abg, label %.lr.ph792.i.i, label %._crit_edge793.i.i, !llvm.loop !1400

.lr.ph812.i.i:                                    ; preds = %._crit_edge797.i.i, %bb.br
  %i.abh = load ptr, ptr %i.so, align 8, !tbaa !37 ; 3 uses
  %invariant.gep814.i.i = getelementptr i8, ptr %i.abh, i64 %i.xr
  %invariant.gep816.i.i = getelementptr i8, ptr %invariant.gep814.i.i, i64 %i.xt
  %i.abi = getelementptr i8, ptr %i.abh, i64 %i.to
  %i.abj = getelementptr i8, ptr %i.abi, i64 %i.xr
  %i.abk = getelementptr i8, ptr %i.abj, i64 %i.xt
  %i.abl = getelementptr i8, ptr %i.abk, i64 %i.yk
  %scevgep = getelementptr i8, ptr %i.abl, i64 %i.yn
  %i.abm = getelementptr i8, ptr %i.abh, i64 %i.xr
  %i.abn = getelementptr i8, ptr %i.abm, i64 %i.xt
  %scevgep373 = getelementptr i8, ptr %i.abn, i64 %i.yk
  %bound0 = icmp ult ptr %i.vy, %scevgep
  %bound1 = icmp ult ptr %scevgep373, %scevgep376
  %found.conflict = and i1 %bound0, %bound1
  %i.abo = or i1 %found.conflict, %stride.check
  br label %bb.bt

._crit_edge813.i.loopexit.i:                      ; preds = %.loopexit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16384) %i.vi, i8 0, i64 16384, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  br label %.preheader157.i.i.i

.preheader157.i.i.i:                              ; preds = %.preheader155.i.thread.i.i, %._crit_edge813.i.loopexit.i
  %i.abp = phi i64 [ 4, %._crit_edge813.i.loopexit.i ], [ %i.acz, %.preheader155.i.thread.i.i ] ; 2 uses
  %.0107201.i.i.i = phi ptr [ %i.vi, %._crit_edge813.i.loopexit.i ], [ %i.acy, %.preheader155.i.thread.i.i ] ; 18 uses
  %.0109199.i.i.i = phi ptr [ %i.vh, %._crit_edge813.i.loopexit.i ], [ %i.acx, %.preheader155.i.thread.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  %.sroa.080.0.copyload.i.i.i.i = load <16 x float>, ptr %.0107201.i.i.i, align 1, !tbaa !56, !alias.scope !1473 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0107201.i.i.i, i64 64 ; 2 uses
  %.sroa.6.0.copyload.i.i.i.i = load <16 x float>, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1473 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0107201.i.i.i, i64 128 ; 2 uses
  %.sroa.8.0.copyload.i.i.i.i = load <16 x float>, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1473 ; 2 uses
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0107201.i.i.i, i64 192 ; 2 uses
  %.sroa.10.0.copyload.i.i.i.i = load <16 x float>, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1473 ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %.0107201.i.i.i, i64 256 ; 2 uses
  %.sroa.12.256.copyload.i.i.i.i = load <16 x float>, ptr %i.abq, align 1, !tbaa !56, !alias.scope !1473 ; 2 uses
  %.sroa.16.256..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0107201.i.i.i, i64 320 ; 2 uses
  %.sroa.16.256.copyload.i.i.i.i = load <16 x float>, ptr %.sroa.16.256..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1473 ; 2 uses
  %.sroa.18.256..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0107201.i.i.i, i64 384 ; 2 uses
  %.sroa.18.256.copyload.i.i.i.i = load <16 x float>, ptr %.sroa.18.256..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1473 ; 2 uses
  %.sroa.20.256..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0107201.i.i.i, i64 448 ; 2 uses
  %.sroa.20.256.copyload.i.i.i.i = load <16 x float>, ptr %.sroa.20.256..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1473 ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %.0107201.i.i.i, i64 512 ; 2 uses
  %.sroa.22.512.copyload.i.i.i.i = load <16 x float>, ptr %i.abr, align 1, !tbaa !56, !alias.scope !1473 ; 2 uses
  %.sroa.26.512..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0107201.i.i.i, i64 576 ; 2 uses
  %.sroa.26.512.copyload.i.i.i.i = load <16 x float>, ptr %.sroa.26.512..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1473 ; 2 uses
  %.sroa.28.512..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0107201.i.i.i, i64 640 ; 2 uses
  %.sroa.28.512.copyload.i.i.i.i = load <16 x float>, ptr %.sroa.28.512..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1473 ; 2 uses
  %.sroa.30.512..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0107201.i.i.i, i64 704 ; 2 uses
  %.sroa.30.512.copyload.i.i.i.i = load <16 x float>, ptr %.sroa.30.512..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1473 ; 2 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %.0107201.i.i.i, i64 768 ; 2 uses
  %.sroa.32.768.copyload.i.i.i.i = load <16 x float>, ptr %i.abs, align 1, !tbaa !56, !alias.scope !1473 ; 2 uses
  %.sroa.36.768..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0107201.i.i.i, i64 832 ; 2 uses
  %.sroa.36.768.copyload.i.i.i.i = load <16 x float>, ptr %.sroa.36.768..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1473 ; 2 uses
  %.sroa.38.768..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0107201.i.i.i, i64 896 ; 2 uses
  %.sroa.38.768.copyload.i.i.i.i = load <16 x float>, ptr %.sroa.38.768..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1473 ; 2 uses
  %.sroa.40.768..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0107201.i.i.i, i64 960 ; 2 uses
  %.sroa.40.768.copyload.i.i.i.i = load <16 x float>, ptr %.sroa.40.768..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1473 ; 2 uses
  br i1 %i.sv, label %.preheader155.i.thread.i.i, label %.preheader52.i.i.i.i

.preheader52.i.i.i.i:                             ; preds = %.preheader157.i.i.i, %.preheader52.i.i.i.i
  %.sroa.40.1.i.i.i.i = phi <16 x float> [ %i.acv, %.preheader52.i.i.i.i ], [ %.sroa.40.768.copyload.i.i.i.i, %.preheader157.i.i.i ]
  %.sroa.38.1.i.i.i.i = phi <16 x float> [ %i.acu, %.preheader52.i.i.i.i ], [ %.sroa.38.768.copyload.i.i.i.i, %.preheader157.i.i.i ]
  %.sroa.36.1.i.i.i.i = phi <16 x float> [ %i.act, %.preheader52.i.i.i.i ], [ %.sroa.36.768.copyload.i.i.i.i, %.preheader157.i.i.i ]
  %.sroa.32.1.i.i.i.i = phi <16 x float> [ %i.acs, %.preheader52.i.i.i.i ], [ %.sroa.32.768.copyload.i.i.i.i, %.preheader157.i.i.i ]
  %.sroa.30.1.i.i.i.i = phi <16 x float> [ %i.aco, %.preheader52.i.i.i.i ], [ %.sroa.30.512.copyload.i.i.i.i, %.preheader157.i.i.i ]
  %.sroa.28.1.i.i.i.i = phi <16 x float> [ %i.acn, %.preheader52.i.i.i.i ], [ %.sroa.28.512.copyload.i.i.i.i, %.preheader157.i.i.i ]
  %.sroa.26.1.i.i.i.i = phi <16 x float> [ %i.acm, %.preheader52.i.i.i.i ], [ %.sroa.26.512.copyload.i.i.i.i, %.preheader157.i.i.i ]
  %.sroa.22.1.i.i.i.i = phi <16 x float> [ %i.acl, %.preheader52.i.i.i.i ], [ %.sroa.22.512.copyload.i.i.i.i, %.preheader157.i.i.i ]
  %.sroa.20.1.i.i.i.i = phi <16 x float> [ %i.ach, %.preheader52.i.i.i.i ], [ %.sroa.20.256.copyload.i.i.i.i, %.preheader157.i.i.i ]
  %.sroa.18.1.i.i.i.i = phi <16 x float> [ %i.acg, %.preheader52.i.i.i.i ], [ %.sroa.18.256.copyload.i.i.i.i, %.preheader157.i.i.i ]
  %.sroa.16.1.i.i.i.i = phi <16 x float> [ %i.acf, %.preheader52.i.i.i.i ], [ %.sroa.16.256.copyload.i.i.i.i, %.preheader157.i.i.i ]
  %.sroa.12.1.i.i.i.i = phi <16 x float> [ %i.ace, %.preheader52.i.i.i.i ], [ %.sroa.12.256.copyload.i.i.i.i, %.preheader157.i.i.i ]
  %.sroa.10.1.i.i.i.i = phi <16 x float> [ %i.aca, %.preheader52.i.i.i.i ], [ %.sroa.10.0.copyload.i.i.i.i, %.preheader157.i.i.i ]
  %.sroa.8.1.i.i.i.i = phi <16 x float> [ %i.abz, %.preheader52.i.i.i.i ], [ %.sroa.8.0.copyload.i.i.i.i, %.preheader157.i.i.i ]
  %.sroa.6.1.i.i.i.i = phi <16 x float> [ %i.aby, %.preheader52.i.i.i.i ], [ %.sroa.6.0.copyload.i.i.i.i, %.preheader157.i.i.i ]
  %.sroa.080.1.i.i.i.i = phi <16 x float> [ %i.abx, %.preheader52.i.i.i.i ], [ %.sroa.080.0.copyload.i.i.i.i, %.preheader157.i.i.i ]
  %.04760.i.i.i.i = phi i64 [ %i.acw, %.preheader52.i.i.i.i ], [ 0, %.preheader157.i.i.i ] ; 3 uses
  %.idx725.i.i = shl nuw nsw i64 %.04760.i.i.i.i, 8
  %i.abt = getelementptr inbounds nuw i8, ptr %i.vy, i64 %.idx725.i.i ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i = load <16 x float>, ptr %i.abt, align 1, !tbaa !56, !alias.scope !1474 ; 4 uses
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abt, i64 64
  %.sroa.7.0.copyload.i.i.i.i = load <16 x float>, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1474 ; 4 uses
  %.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abt, i64 128
  %.sroa.11.0.copyload.i.i.i.i = load <16 x float>, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1474 ; 4 uses
  %.sroa.15.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abt, i64 192
  %.sroa.15.0.copyload.i.i.i.i = load <16 x float>, ptr %.sroa.15.0..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1474 ; 4 uses
  %invariant.gep.i.i.i.i = getelementptr [4 x i8], ptr %.0109199.i.i.i, i64 %.04760.i.i.i.i ; 4 uses
  %i.abu = load float, ptr %invariant.gep.i.i.i.i, align 4, !tbaa !43, !alias.scope !1475
  %i.abv = insertelement <16 x float> poison, float %i.abu, i64 0
  %i.abw = shufflevector <16 x float> %i.abv, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.abx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.0.0.copyload.i.i.i.i, <16 x float> %i.abw, <16 x float> %.sroa.080.1.i.i.i.i) ; 2 uses
  %i.aby = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.7.0.copyload.i.i.i.i, <16 x float> %i.abw, <16 x float> %.sroa.6.1.i.i.i.i) ; 2 uses
  %i.abz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.11.0.copyload.i.i.i.i, <16 x float> %i.abw, <16 x float> %.sroa.8.1.i.i.i.i) ; 2 uses
  %i.aca = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.15.0.copyload.i.i.i.i, <16 x float> %i.abw, <16 x float> %.sroa.10.1.i.i.i.i) ; 2 uses
  %gep.1.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i, i64 %i.su
  %i.acb = load float, ptr %gep.1.i.i.i.i, align 4, !tbaa !43, !alias.scope !1475
  %i.acc = insertelement <16 x float> poison, float %i.acb, i64 0
  %i.acd = shufflevector <16 x float> %i.acc, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.ace = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.0.0.copyload.i.i.i.i, <16 x float> %i.acd, <16 x float> %.sroa.12.1.i.i.i.i) ; 2 uses
  %i.acf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.7.0.copyload.i.i.i.i, <16 x float> %i.acd, <16 x float> %.sroa.16.1.i.i.i.i) ; 2 uses
  %i.acg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.11.0.copyload.i.i.i.i, <16 x float> %i.acd, <16 x float> %.sroa.18.1.i.i.i.i) ; 2 uses
  %i.ach = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.15.0.copyload.i.i.i.i, <16 x float> %i.acd, <16 x float> %.sroa.20.1.i.i.i.i) ; 2 uses
  %gep.2.i.i.i.i = getelementptr i8, ptr %invariant.gep.i.i.i.i, i64 %gep.2.idx.i.i.i.i
  %i.aci = load float, ptr %gep.2.i.i.i.i, align 4, !tbaa !43, !alias.scope !1475
  %i.acj = insertelement <16 x float> poison, float %i.aci, i64 0
  %i.ack = shufflevector <16 x float> %i.acj, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.acl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.0.0.copyload.i.i.i.i, <16 x float> %i.ack, <16 x float> %.sroa.22.1.i.i.i.i) ; 2 uses
  %i.acm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.7.0.copyload.i.i.i.i, <16 x float> %i.ack, <16 x float> %.sroa.26.1.i.i.i.i) ; 2 uses
  %i.acn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.11.0.copyload.i.i.i.i, <16 x float> %i.ack, <16 x float> %.sroa.28.1.i.i.i.i) ; 2 uses
  %i.aco = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.15.0.copyload.i.i.i.i, <16 x float> %i.ack, <16 x float> %.sroa.30.1.i.i.i.i) ; 2 uses
  %gep.3.i.i.i.i = getelementptr i8, ptr %invariant.gep.i.i.i.i, i64 %gep.3.idx.i.i.i.i
  %i.acp = load float, ptr %gep.3.i.i.i.i, align 4, !tbaa !43, !alias.scope !1475
  %i.acq = insertelement <16 x float> poison, float %i.acp, i64 0
  %i.acr = shufflevector <16 x float> %i.acq, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.acs = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.0.0.copyload.i.i.i.i, <16 x float> %i.acr, <16 x float> %.sroa.32.1.i.i.i.i) ; 2 uses
  %i.act = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.7.0.copyload.i.i.i.i, <16 x float> %i.acr, <16 x float> %.sroa.36.1.i.i.i.i) ; 2 uses
  %i.acu = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.11.0.copyload.i.i.i.i, <16 x float> %i.acr, <16 x float> %.sroa.38.1.i.i.i.i) ; 2 uses
  %i.acv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.15.0.copyload.i.i.i.i, <16 x float> %i.acr, <16 x float> %.sroa.40.1.i.i.i.i) ; 2 uses
  %i.acw = add nuw nsw i64 %.04760.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.acw, %i.su
  br i1 %exitcond.not.i.i.i.i, label %.preheader155.i.thread.i.i, label %.preheader52.i.i.i.i, !llvm.loop !1409

.preheader155.i.thread.i.i:                       ; preds = %.preheader52.i.i.i.i, %.preheader157.i.i.i
  %.sroa.40.0.i.i.i.i = phi <16 x float> [ %.sroa.40.768.copyload.i.i.i.i, %.preheader157.i.i.i ], [ %i.acv, %.preheader52.i.i.i.i ]
  %.sroa.38.0.i.i.i.i = phi <16 x float> [ %.sroa.38.768.copyload.i.i.i.i, %.preheader157.i.i.i ], [ %i.acu, %.preheader52.i.i.i.i ]
  %.sroa.36.0.i.i.i.i = phi <16 x float> [ %.sroa.36.768.copyload.i.i.i.i, %.preheader157.i.i.i ], [ %i.act, %.preheader52.i.i.i.i ]
  %.sroa.32.0.i.i.i.i = phi <16 x float> [ %.sroa.32.768.copyload.i.i.i.i, %.preheader157.i.i.i ], [ %i.acs, %.preheader52.i.i.i.i ]
  %.sroa.30.0.i.i.i.i = phi <16 x float> [ %.sroa.30.512.copyload.i.i.i.i, %.preheader157.i.i.i ], [ %i.aco, %.preheader52.i.i.i.i ]
  %.sroa.28.0.i.i.i.i = phi <16 x float> [ %.sroa.28.512.copyload.i.i.i.i, %.preheader157.i.i.i ], [ %i.acn, %.preheader52.i.i.i.i ]
  %.sroa.26.0.i.i.i.i = phi <16 x float> [ %.sroa.26.512.copyload.i.i.i.i, %.preheader157.i.i.i ], [ %i.acm, %.preheader52.i.i.i.i ]
  %.sroa.22.0.i.i.i.i = phi <16 x float> [ %.sroa.22.512.copyload.i.i.i.i, %.preheader157.i.i.i ], [ %i.acl, %.preheader52.i.i.i.i ]
  %.sroa.20.0.i.i.i.i = phi <16 x float> [ %.sroa.20.256.copyload.i.i.i.i, %.preheader157.i.i.i ], [ %i.ach, %.preheader52.i.i.i.i ]
  %.sroa.18.0.i.i.i.i = phi <16 x float> [ %.sroa.18.256.copyload.i.i.i.i, %.preheader157.i.i.i ], [ %i.acg, %.preheader52.i.i.i.i ]
  %.sroa.16.0.i.i.i.i = phi <16 x float> [ %.sroa.16.256.copyload.i.i.i.i, %.preheader157.i.i.i ], [ %i.acf, %.preheader52.i.i.i.i ]
  %.sroa.12.0.i.i.i.i = phi <16 x float> [ %.sroa.12.256.copyload.i.i.i.i, %.preheader157.i.i.i ], [ %i.ace, %.preheader52.i.i.i.i ]
  %.sroa.10.0.i.i.i.i = phi <16 x float> [ %.sroa.10.0.copyload.i.i.i.i, %.preheader157.i.i.i ], [ %i.aca, %.preheader52.i.i.i.i ]
  %.sroa.8.0.i.i.i.i = phi <16 x float> [ %.sroa.8.0.copyload.i.i.i.i, %.preheader157.i.i.i ], [ %i.abz, %.preheader52.i.i.i.i ]
  %.sroa.6.0.i.i.i.i = phi <16 x float> [ %.sroa.6.0.copyload.i.i.i.i, %.preheader157.i.i.i ], [ %i.aby, %.preheader52.i.i.i.i ]
  %.sroa.080.0.i.i.i.i = phi <16 x float> [ %.sroa.080.0.copyload.i.i.i.i, %.preheader157.i.i.i ], [ %i.abx, %.preheader52.i.i.i.i ]
  store <16 x float> %.sroa.080.0.i.i.i.i, ptr %.0107201.i.i.i, align 1, !tbaa !56, !alias.scope !1473
  store <16 x float> %.sroa.6.0.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1473
  store <16 x float> %.sroa.8.0.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1473
  store <16 x float> %.sroa.10.0.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1473
  store <16 x float> %.sroa.12.0.i.i.i.i, ptr %i.abq, align 1, !tbaa !56, !alias.scope !1473
  store <16 x float> %.sroa.16.0.i.i.i.i, ptr %.sroa.16.256..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1473
  store <16 x float> %.sroa.18.0.i.i.i.i, ptr %.sroa.18.256..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1473
  store <16 x float> %.sroa.20.0.i.i.i.i, ptr %.sroa.20.256..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1473
  store <16 x float> %.sroa.22.0.i.i.i.i, ptr %i.abr, align 1, !tbaa !56, !alias.scope !1473
  store <16 x float> %.sroa.26.0.i.i.i.i, ptr %.sroa.26.512..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1473
  store <16 x float> %.sroa.28.0.i.i.i.i, ptr %.sroa.28.512..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1473
  store <16 x float> %.sroa.30.0.i.i.i.i, ptr %.sroa.30.512..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1473
  store <16 x float> %.sroa.32.0.i.i.i.i, ptr %i.abs, align 1, !tbaa !56, !alias.scope !1473
  store <16 x float> %.sroa.36.0.i.i.i.i, ptr %.sroa.36.768..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1473
  store <16 x float> %.sroa.38.0.i.i.i.i, ptr %.sroa.38.768..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1473
  store <16 x float> %.sroa.40.0.i.i.i.i, ptr %.sroa.40.768..sroa_idx.i.i.i.i, align 1, !tbaa !56, !alias.scope !1473
  %i.acx = getelementptr inbounds [4 x i8], ptr %.0109199.i.i.i, i64 %i.st
  %i.acy = getelementptr inbounds nuw i8, ptr %.0107201.i.i.i, i64 1024
  %i.acz = add nuw nsw i64 %i.abp, 4
  %i.ada = icmp samesign ult i64 %i.abp, 61
  br i1 %i.ada, label %.preheader157.i.i.i, label %.preheader27.i.i.i, !llvm.loop !1410

.preheader27.i.i.i:                               ; preds = %.preheader155.i.thread.i.i, %.preheader27.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %.preheader27.i.i.i ], [ 0, %.preheader155.i.thread.i.i ] ; 3 uses
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv.i.i.i ; 5 uses
  %i.adc = load <16 x float>, ptr %i.adb, align 1, !tbaa !56
  %i.add = fmul <16 x float> %i.sx, %i.adc
  store <16 x float> %i.add, ptr %i.adb, align 1, !tbaa !56
  %i.ade = getelementptr inbounds nuw i8, ptr %i.adb, i64 64 ; 2 uses
  %i.adf = load <16 x float>, ptr %i.ade, align 1, !tbaa !56
  %i.adg = fmul <16 x float> %i.sx, %i.adf
  store <16 x float> %i.adg, ptr %i.ade, align 1, !tbaa !56
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adb, i64 128 ; 2 uses
  %i.adi = load <16 x float>, ptr %i.adh, align 1, !tbaa !56
  %i.adj = fmul <16 x float> %i.sx, %i.adi
  store <16 x float> %i.adj, ptr %i.adh, align 1, !tbaa !56
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adb, i64 192 ; 2 uses
  %i.adl = load <16 x float>, ptr %i.adk, align 1, !tbaa !56
  %i.adm = fmul <16 x float> %i.sx, %i.adl
  store <16 x float> %i.adm, ptr %i.adk, align 1, !tbaa !56
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 64 ; 2 uses
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv.next.i.i.i ; 5 uses
  %i.ado = load <16 x float>, ptr %i.adn, align 1, !tbaa !56
  %i.adp = fmul <16 x float> %i.sx, %i.ado
  store <16 x float> %i.adp, ptr %i.adn, align 1, !tbaa !56
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adn, i64 64 ; 2 uses
  %i.adr = load <16 x float>, ptr %i.adq, align 1, !tbaa !56
  %i.ads = fmul <16 x float> %i.sx, %i.adr
  store <16 x float> %i.ads, ptr %i.adq, align 1, !tbaa !56
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adn, i64 128 ; 2 uses
  %i.adu = load <16 x float>, ptr %i.adt, align 1, !tbaa !56
  %i.adv = fmul <16 x float> %i.sx, %i.adu
  store <16 x float> %i.adv, ptr %i.adt, align 1, !tbaa !56
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adn, i64 192 ; 2 uses
  %i.adx = load <16 x float>, ptr %i.adw, align 1, !tbaa !56
  %i.ady = fmul <16 x float> %i.sx, %i.adx
  store <16 x float> %i.ady, ptr %i.adw, align 1, !tbaa !56
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 128
  %i.adz = icmp samesign ult i64 %indvars.iv.next.i.i.i, 4032
  br i1 %i.adz, label %.preheader27.i.i.i, label %_ZL18ggml_vec_scale_f32iPff.exit.i264.i, !llvm.loop !2

_ZL18ggml_vec_scale_f32iPff.exit.i264.i:          ; preds = %.preheader27.i.i.i
  %i.aea = icmp slt i64 %3, 64
  br i1 %i.aea, label %iter.check354.preheader, label %.loopexit738.i.i

iter.check354.preheader:                          ; preds = %_ZL18ggml_vec_scale_f32iPff.exit.i264.i
  %min.iters.check344.a = icmp ult i32 %i.yq, 7
  %min.iters.check346 = icmp ult i32 %i.yq, 31
  %i.aeb = and i64 %i.ys, 24
  %n.vec348 = and i64 %i.ys, 8589934560           ; 4 uses
  %i.aec = add nuw nsw i64 %2, %n.vec348
  %cmp.n353 = icmp eq i64 %i.ys, %n.vec348
  %min.epilog.iters.check357 = icmp eq i64 %i.aeb, 0
  %n.vec360 = and i64 %i.ys, 8589934584           ; 3 uses
  %i.aed = add nuw nsw i64 %2, %n.vec360
  %cmp.n365 = icmp eq i64 %i.ys, %n.vec360
  br label %iter.check354

bb.bt:                                            ; preds = %.loopexit.i.i, %.lr.ph812.i.i
  %indvars.iv909.i.i = phi i64 [ 0, %.lr.ph812.i.i ], [ %indvars.iv.next910.i.i, %.loopexit.i.i ] ; 3 uses
  %i.aee = add nuw nsw i64 %indvars.iv909.i.i, %.0440826.i.i
  %i.aef = mul i64 %i.aee, %i.pk
  %gep817.i.i = getelementptr i8, ptr %invariant.gep816.i.i, i64 %i.aef ; 16 uses
  %invariant.gep806.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.vy, i64 %indvars.iv909.i.i ; 19 uses
  br i1 %i.sp, label %.preheader730.i.i, label %.preheader731.i.i

.preheader731.i.i:                                ; preds = %bb.bt
  br i1 %i.sq, label %iter.check394, label %.loopexit.i.i

iter.check394:                                    ; preds = %.preheader731.i.i
  %brmerge663 = select i1 %min.iters.check377.a, i1 true, i1 %i.abo
  br i1 %brmerge663, label %.lr.ph805.i.i.preheader, label %vector.main.loop.iter.check378

vector.main.loop.iter.check378:                   ; preds = %iter.check394
  br i1 %min.iters.check379, label %vec.epilog.ph398, label %vector.body382

vector.body382:                                   ; preds = %vector.main.loop.iter.check378, %vector.body382
  %index383 = phi i64 [ %index.next391, %vector.body382 ], [ 0, %vector.main.loop.iter.check378 ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %vec.ind.next, %vector.body382 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.main.loop.iter.check378 ] ; 5 uses
  %i.aeg = getelementptr inbounds nuw [4 x i8], ptr %gep817.i.i, i64 %index383 ; 4 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 32
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeg, i64 64
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aeg, i64 96
  %wide.load384.a = load <8 x float>, ptr %i.aeg, align 4, !tbaa !43, !alias.scope !1476
  %wide.load385.a = load <8 x float>, ptr %i.aeh, align 4, !tbaa !43, !alias.scope !1476
  %wide.load386 = load <8 x float>, ptr %i.aei, align 4, !tbaa !43, !alias.scope !1476
  %wide.load387 = load <8 x float>, ptr %i.aej, align 4, !tbaa !43, !alias.scope !1476
  %i.aek = shl nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %step.add = shl <8 x i64> %vec.ind, splat (i64 8)
  %i.ael = add <8 x i64> %step.add, splat (i64 2048)
  %step.add.2 = shl <8 x i64> %vec.ind, splat (i64 8)
  %i.aem = add <8 x i64> %step.add.2, splat (i64 4096)
  %step.add.3 = shl <8 x i64> %vec.ind, splat (i64 8)
  %i.aen = add <8 x i64> %step.add.3, splat (i64 6144)
  %wide.gep = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, <8 x i64> %i.aek
  %wide.gep388.a = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, <8 x i64> %i.ael
  %wide.gep389 = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, <8 x i64> %i.aem
  %wide.gep390 = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, <8 x i64> %i.aen
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load384.a, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !43, !alias.scope !1477, !noalias !1476
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load385.a, <8 x ptr> align 4 %wide.gep388.a, <8 x i1> splat (i1 true)), !tbaa !43, !alias.scope !1477, !noalias !1476
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load386, <8 x ptr> align 4 %wide.gep389, <8 x i1> splat (i1 true)), !tbaa !43, !alias.scope !1477, !noalias !1476
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load387, <8 x ptr> align 4 %wide.gep390, <8 x i1> splat (i1 true)), !tbaa !43, !alias.scope !1477, !noalias !1476
  %index.next391 = add nuw i64 %index383, 32      ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.aeo = icmp eq i64 %index.next391, %n.vec381
  br i1 %i.aeo, label %middle.block392, label %vector.body382, !llvm.loop !1414

middle.block392:                                  ; preds = %vector.body382
  br i1 %cmp.n393, label %.loopexit.i.i, label %vec.epilog.iter.check395

vec.epilog.iter.check395:                         ; preds = %middle.block392
  br i1 %min.epilog.iters.check397, label %.lr.ph805.i.i.preheader, label %vec.epilog.ph398, !prof !50

vec.epilog.ph398:                                 ; preds = %vector.main.loop.iter.check378, %vec.epilog.iter.check395
  %vec.epilog.resume.val399 = phi i64 [ %n.vec381, %vec.epilog.iter.check395 ], [ 0, %vector.main.loop.iter.check378 ] ; 2 uses
  %broadcast.splatinsert401 = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val399, i64 0
  %broadcast.splat402 = shufflevector <8 x i64> %broadcast.splatinsert401, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i64> %broadcast.splat402, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body403

vec.epilog.vector.body403:                        ; preds = %vec.epilog.vector.body403, %vec.epilog.ph398
  %index404 = phi i64 [ %vec.epilog.resume.val399, %vec.epilog.ph398 ], [ %index.next408, %vec.epilog.vector.body403 ] ; 2 uses
  %vec.ind405 = phi <8 x i64> [ %induction, %vec.epilog.ph398 ], [ %vec.ind.next409, %vec.epilog.vector.body403 ] ; 2 uses
  %i.aep = getelementptr inbounds nuw [4 x i8], ptr %gep817.i.i, i64 %index404
  %wide.load406 = load <8 x float>, ptr %i.aep, align 4, !tbaa !43, !alias.scope !1476
  %i.aeq = shl nuw nsw <8 x i64> %vec.ind405, splat (i64 8)
  %wide.gep407 = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, <8 x i64> %i.aeq
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load406, <8 x ptr> align 4 %wide.gep407, <8 x i1> splat (i1 true)), !tbaa !43, !alias.scope !1477, !noalias !1476
  %index.next408 = add nuw i64 %index404, 8       ; 2 uses
  %vec.ind.next409 = add nuw nsw <8 x i64> %vec.ind405, splat (i64 8)
  %i.aer = icmp eq i64 %index.next408, %n.vec400
  br i1 %i.aer, label %vec.epilog.middle.block410, label %vec.epilog.vector.body403, !llvm.loop !1415

vec.epilog.middle.block410:                       ; preds = %vec.epilog.vector.body403
  br i1 %cmp.n411, label %.loopexit.i.i, label %.lr.ph805.i.i.preheader

.lr.ph805.i.i.preheader:                          ; preds = %iter.check394, %vec.epilog.iter.check395, %vec.epilog.middle.block410
  %.0432804.i.i.ph = phi i64 [ 0, %iter.check394 ], [ %n.vec400, %vec.epilog.middle.block410 ], [ %n.vec381, %vec.epilog.iter.check395 ] ; 3 uses
  %i.aes = sub i64 %i.tu, %.0432804.i.i.ph
  br i1 %lcmp.mod588.not, label %.lr.ph805.i.i.prol.loopexit, label %.lr.ph805.i.i.prol

.lr.ph805.i.i.prol:                               ; preds = %.lr.ph805.i.i.preheader, %.lr.ph805.i.i.prol
  %.0432804.i.i.prol = phi i64 [ %i.aev, %.lr.ph805.i.i.prol ], [ %.0432804.i.i.ph, %.lr.ph805.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph805.i.i.prol ], [ 0, %.lr.ph805.i.i.preheader ]
  %i.aet = getelementptr inbounds nuw [4 x i8], ptr %gep817.i.i, i64 %.0432804.i.i.prol
  %i.aeu = load float, ptr %i.aet, align 4, !tbaa !43
  %.idx.i.i.prol = shl nuw nsw i64 %.0432804.i.i.prol, 8
  %gep803.i.i.prol = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, i64 %.idx.i.i.prol
  store float %i.aeu, ptr %gep803.i.i.prol, align 4, !tbaa !43
  %i.aev = add nuw nsw i64 %.0432804.i.i.prol, 1  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter587.a
  br i1 %prol.iter.cmp.not, label %.lr.ph805.i.i.prol.loopexit, label %.lr.ph805.i.i.prol, !llvm.loop !1416

.lr.ph805.i.i.prol.loopexit:                      ; preds = %.lr.ph805.i.i.prol, %.lr.ph805.i.i.preheader
  %.0432804.i.i.unr = phi i64 [ %.0432804.i.i.ph, %.lr.ph805.i.i.preheader ], [ %i.aev, %.lr.ph805.i.i.prol ]
  %i.aew = icmp ult i64 %i.aes, 7
  br i1 %i.aew, label %.loopexit.i.i, label %.lr.ph805.i.i

.preheader730.i.i:                                ; preds = %bb.bt
  br i1 %i.sq, label %.lr.ph809.i.i.preheader, label %.loopexit.i.i

.lr.ph809.i.i.preheader:                          ; preds = %.preheader730.i.i
  br i1 %i.tw, label %.lr.ph809.i.i.epil.preheader, label %.lr.ph809.i.i

.lr.ph809.i.i:                                    ; preds = %.lr.ph809.i.i.preheader, %.lr.ph809.i.i
  %.0433808.i.i = phi i64 [ %i.afu, %.lr.ph809.i.i ], [ 0, %.lr.ph809.i.i.preheader ] ; 6 uses
  %niter594 = phi i64 [ %niter594.next.3, %.lr.ph809.i.i ], [ 0, %.lr.ph809.i.i.preheader ]
  %i.aex = getelementptr inbounds nuw [2 x i8], ptr %gep817.i.i, i64 %.0433808.i.i
  %i.aey = load i16, ptr %i.aex, align 2, !tbaa !41
  %i.aez = zext i16 %i.aey to i64
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.aez
  %i.afb = load float, ptr %i.afa, align 4, !tbaa !43
  %.idx512.i.i = shl nuw nsw i64 %.0433808.i.i, 8
  %gep807.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, i64 %.idx512.i.i
  store float %i.afb, ptr %gep807.i.i, align 4, !tbaa !43
  %i.afc = or disjoint i64 %.0433808.i.i, 1       ; 2 uses
  %i.afd = getelementptr inbounds nuw [2 x i8], ptr %gep817.i.i, i64 %i.afc
  %i.afe = load i16, ptr %i.afd, align 2, !tbaa !41
  %i.aff = zext i16 %i.afe to i64
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.aff
  %i.afh = load float, ptr %i.afg, align 4, !tbaa !43
  %.idx512.i.i.1 = shl nuw nsw i64 %i.afc, 8
  %gep807.i.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, i64 %.idx512.i.i.1
  store float %i.afh, ptr %gep807.i.i.1, align 4, !tbaa !43
  %i.afi = or disjoint i64 %.0433808.i.i, 2       ; 2 uses
  %i.afj = getelementptr inbounds nuw [2 x i8], ptr %gep817.i.i, i64 %i.afi
  %i.afk = load i16, ptr %i.afj, align 2, !tbaa !41
  %i.afl = zext i16 %i.afk to i64
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.afl
  %i.afn = load float, ptr %i.afm, align 4, !tbaa !43
  %.idx512.i.i.2 = shl nuw nsw i64 %i.afi, 8
  %gep807.i.i.2 = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, i64 %.idx512.i.i.2
  store float %i.afn, ptr %gep807.i.i.2, align 4, !tbaa !43
  %i.afo = or disjoint i64 %.0433808.i.i, 3       ; 2 uses
  %i.afp = getelementptr inbounds nuw [2 x i8], ptr %gep817.i.i, i64 %i.afo
  %i.afq = load i16, ptr %i.afp, align 2, !tbaa !41
  %i.afr = zext i16 %i.afq to i64
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.afr
  %i.aft = load float, ptr %i.afs, align 4, !tbaa !43
  %.idx512.i.i.3 = shl nuw nsw i64 %i.afo, 8
  %gep807.i.i.3 = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, i64 %.idx512.i.i.3
  store float %i.aft, ptr %gep807.i.i.3, align 4, !tbaa !43
  %i.afu = add nuw nsw i64 %.0433808.i.i, 4       ; 2 uses
  %niter594.next.3 = add nuw nsw i64 %niter594, 4 ; 2 uses
  %niter594.ncmp.3 = icmp eq i64 %niter594.next.3, %unroll_iter593
  br i1 %niter594.ncmp.3, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph809.i.i, !llvm.loop !1417

.lr.ph805.i.i:                                    ; preds = %.lr.ph805.i.i.prol.loopexit, %.lr.ph805.i.i
  %.0432804.i.i = phi i64 [ %i.ags, %.lr.ph805.i.i ], [ %.0432804.i.i.unr, %.lr.ph805.i.i.prol.loopexit ] ; 10 uses
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %gep817.i.i, i64 %.0432804.i.i
  %i.afw = load float, ptr %i.afv, align 4, !tbaa !43
  %.idx.i.i = shl nuw nsw i64 %.0432804.i.i, 8
  %gep803.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, i64 %.idx.i.i
  store float %i.afw, ptr %gep803.i.i, align 4, !tbaa !43
  %i.afx = add nuw nsw i64 %.0432804.i.i, 1       ; 2 uses
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %gep817.i.i, i64 %i.afx
  %i.afz = load float, ptr %i.afy, align 4, !tbaa !43
  %.idx.i.i.1 = shl nuw nsw i64 %i.afx, 8
  %gep803.i.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, i64 %.idx.i.i.1
  store float %i.afz, ptr %gep803.i.i.1, align 4, !tbaa !43
  %i.aga = add nuw nsw i64 %.0432804.i.i, 2       ; 2 uses
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %gep817.i.i, i64 %i.aga
  %i.agc = load float, ptr %i.agb, align 4, !tbaa !43
  %.idx.i.i.2 = shl nuw nsw i64 %i.aga, 8
  %gep803.i.i.2 = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, i64 %.idx.i.i.2
  store float %i.agc, ptr %gep803.i.i.2, align 4, !tbaa !43
  %i.agd = add nuw nsw i64 %.0432804.i.i, 3       ; 2 uses
  %i.age = getelementptr inbounds nuw [4 x i8], ptr %gep817.i.i, i64 %i.agd
  %i.agf = load float, ptr %i.age, align 4, !tbaa !43
  %.idx.i.i.3 = shl nuw nsw i64 %i.agd, 8
  %gep803.i.i.3 = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, i64 %.idx.i.i.3
  store float %i.agf, ptr %gep803.i.i.3, align 4, !tbaa !43
  %i.agg = add nuw nsw i64 %.0432804.i.i, 4       ; 2 uses
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %gep817.i.i, i64 %i.agg
  %i.agi = load float, ptr %i.agh, align 4, !tbaa !43
  %.idx.i.i.4 = shl nuw nsw i64 %i.agg, 8
  %gep803.i.i.4 = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, i64 %.idx.i.i.4
  store float %i.agi, ptr %gep803.i.i.4, align 4, !tbaa !43
  %i.agj = add nuw nsw i64 %.0432804.i.i, 5       ; 2 uses
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %gep817.i.i, i64 %i.agj
  %i.agl = load float, ptr %i.agk, align 4, !tbaa !43
  %.idx.i.i.5 = shl nuw nsw i64 %i.agj, 8
  %gep803.i.i.5 = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, i64 %.idx.i.i.5
  store float %i.agl, ptr %gep803.i.i.5, align 4, !tbaa !43
  %i.agm = add nuw nsw i64 %.0432804.i.i, 6       ; 2 uses
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr %gep817.i.i, i64 %i.agm
  %i.ago = load float, ptr %i.agn, align 4, !tbaa !43
  %.idx.i.i.6 = shl nuw nsw i64 %i.agm, 8
  %gep803.i.i.6 = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, i64 %.idx.i.i.6
  store float %i.ago, ptr %gep803.i.i.6, align 4, !tbaa !43
  %i.agp = add nuw nsw i64 %.0432804.i.i, 7       ; 2 uses
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %gep817.i.i, i64 %i.agp
  %i.agr = load float, ptr %i.agq, align 4, !tbaa !43
  %.idx.i.i.7 = shl nuw nsw i64 %i.agp, 8
  %gep803.i.i.7 = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, i64 %.idx.i.i.7
  store float %i.agr, ptr %gep803.i.i.7, align 4, !tbaa !43
  %i.ags = add nuw nsw i64 %.0432804.i.i, 8       ; 2 uses
  %exitcond907.not.i.i.7 = icmp eq i64 %i.ags, %i.on
  br i1 %exitcond907.not.i.i.7, label %.loopexit.i.i, label %.lr.ph805.i.i, !llvm.loop !1418

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph809.i.i
  br i1 %lcmp.mod591.not, label %.loopexit.i.i, label %.lr.ph809.i.i.epil.preheader

.lr.ph809.i.i.epil.preheader:                     ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph809.i.i.preheader
  %.0433808.i.i.epil.init = phi i64 [ 0, %.lr.ph809.i.i.preheader ], [ %i.afu, %.loopexit.i.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod592)
  br label %.lr.ph809.i.i.epil

.lr.ph809.i.i.epil:                               ; preds = %.lr.ph809.i.i.epil, %.lr.ph809.i.i.epil.preheader
  %.0433808.i.i.epil = phi i64 [ %i.agy, %.lr.ph809.i.i.epil ], [ %.0433808.i.i.epil.init, %.lr.ph809.i.i.epil.preheader ] ; 3 uses
  %epil.iter590 = phi i64 [ %epil.iter590.next, %.lr.ph809.i.i.epil ], [ 0, %.lr.ph809.i.i.epil.preheader ]
  %i.agt = getelementptr inbounds nuw [2 x i8], ptr %gep817.i.i, i64 %.0433808.i.i.epil
  %i.agu = load i16, ptr %i.agt, align 2, !tbaa !41
  %i.agv = zext i16 %i.agu to i64
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.agv
  %i.agx = load float, ptr %i.agw, align 4, !tbaa !43
  %.idx512.i.i.epil = shl nuw nsw i64 %.0433808.i.i.epil, 8
  %gep807.i.i.epil = getelementptr inbounds nuw i8, ptr %invariant.gep806.i.i, i64 %.idx512.i.i.epil
  store float %i.agx, ptr %gep807.i.i.epil, align 4, !tbaa !43
  %i.agy = add nuw nsw i64 %.0433808.i.i.epil, 1
  %epil.iter590.next = add i64 %epil.iter590, 1   ; 2 uses
  %epil.iter590.cmp.not = icmp eq i64 %epil.iter590.next, %xtraiter589
  br i1 %epil.iter590.cmp.not, label %.loopexit.i.i, label %.lr.ph809.i.i.epil, !llvm.loop !1419

.loopexit.i.i:                                    ; preds = %.lr.ph805.i.i.prol.loopexit, %.lr.ph805.i.i, %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph809.i.i.epil, %middle.block392, %vec.epilog.middle.block410, %.preheader730.i.i, %.preheader731.i.i
  %indvars.iv.next910.i.i = add nuw nsw i64 %indvars.iv909.i.i, 1 ; 2 uses
  %exitcond914.not.i.i = icmp eq i64 %indvars.iv.next910.i.i, %2
  br i1 %exitcond914.not.i.i, label %._crit_edge813.i.loopexit.i, label %bb.bt, !llvm.loop !1420

iter.check354:                                    ; preds = %iter.check354.preheader, %._crit_edge820.i.i
  %indvars.iv919.i.i = phi i64 [ %indvars.iv.next920.i.i, %._crit_edge820.i.i ], [ 0, %iter.check354.preheader ] ; 2 uses
  %.idx981.i.i.a = shl nuw nsw i64 %indvars.iv919.i.i, 8
  %invariant.gep1033.i.i = getelementptr inbounds nuw i8, ptr %i.vi, i64 %.idx981.i.i.a ; 3 uses
  br i1 %min.iters.check344.a, label %vec.epilog.scalar.ph356.preheader, label %vector.main.loop.iter.check345

vector.main.loop.iter.check345:                   ; preds = %iter.check354
  br i1 %min.iters.check346, label %vec.epilog.ph358, label %vector.ph347

vector.ph347:                                     ; preds = %vector.main.loop.iter.check345
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1033.i.i, i64 %2
  br label %vector.body349

vector.body349:                                   ; preds = %vector.ph347, %vector.body349
  %index350 = phi i64 [ 0, %vector.ph347 ], [ %index.next351, %vector.body349 ] ; 2 uses
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %index350 ; 4 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 32
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.aha, i64 64
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.aha, i64 96
  store <8 x float> splat (float -inf), ptr %i.aha, align 4, !tbaa !43
  store <8 x float> splat (float -inf), ptr %i.ahb, align 4, !tbaa !43
  store <8 x float> splat (float -inf), ptr %i.ahc, align 4, !tbaa !43
  store <8 x float> splat (float -inf), ptr %i.ahd, align 4, !tbaa !43
  %index.next351 = add nuw i64 %index350, 32      ; 2 uses
  %i.ahe = icmp eq i64 %index.next351, %n.vec348
  br i1 %i.ahe, label %middle.block352, label %vector.body349, !llvm.loop !1421

middle.block352:                                  ; preds = %vector.body349
  br i1 %cmp.n353, label %._crit_edge820.i.i, label %vec.epilog.iter.check355

vec.epilog.iter.check355:                         ; preds = %middle.block352
  br i1 %min.epilog.iters.check357, label %vec.epilog.scalar.ph356.preheader, label %vec.epilog.ph358, !prof !50

vec.epilog.ph358:                                 ; preds = %vector.main.loop.iter.check345, %vec.epilog.iter.check355
  %vec.epilog.resume.val359 = phi i64 [ %n.vec348, %vec.epilog.iter.check355 ], [ 0, %vector.main.loop.iter.check345 ]
  %i.ahf = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1033.i.i, i64 %2
  br label %vec.epilog.vector.body361

vec.epilog.vector.body361:                        ; preds = %vec.epilog.vector.body361, %vec.epilog.ph358
  %index362 = phi i64 [ %vec.epilog.resume.val359, %vec.epilog.ph358 ], [ %index.next363, %vec.epilog.vector.body361 ] ; 2 uses
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %i.ahf, i64 %index362
  store <8 x float> splat (float -inf), ptr %i.ahg, align 4, !tbaa !43
  %index.next363 = add nuw i64 %index362, 8       ; 2 uses
  %i.ahh = icmp eq i64 %index.next363, %n.vec360
  br i1 %i.ahh, label %vec.epilog.middle.block364, label %vec.epilog.vector.body361, !llvm.loop !1422

vec.epilog.middle.block364:                       ; preds = %vec.epilog.vector.body361
  br i1 %cmp.n365, label %._crit_edge820.i.i, label %vec.epilog.scalar.ph356.preheader

vec.epilog.scalar.ph356.preheader:                ; preds = %iter.check354, %vec.epilog.iter.check355, %vec.epilog.middle.block364
  %indvars.iv916.i.i.ph = phi i64 [ %2, %iter.check354 ], [ %i.aec, %vec.epilog.iter.check355 ], [ %i.aed, %vec.epilog.middle.block364 ]
  br label %vec.epilog.scalar.ph356

._crit_edge820.i.i:                               ; preds = %vec.epilog.scalar.ph356, %vec.epilog.middle.block364, %middle.block352
  %indvars.iv.next920.i.i = add nuw nsw i64 %indvars.iv919.i.i, 1 ; 2 uses
  %exitcond922.not.i.i = icmp eq i64 %indvars.iv.next920.i.i, 64
  br i1 %exitcond922.not.i.i, label %.loopexit738.i.i, label %iter.check354, !llvm.loop !1423

vec.epilog.scalar.ph356:                          ; preds = %vec.epilog.scalar.ph356.preheader, %vec.epilog.scalar.ph356
  %indvars.iv916.i.i = phi i64 [ %indvars.iv.next917.i.i, %vec.epilog.scalar.ph356 ], [ %indvars.iv916.i.i.ph, %vec.epilog.scalar.ph356.preheader ] ; 3 uses
  %gep1034.i.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1033.i.i, i64 %indvars.iv916.i.i
  store float -inf, ptr %gep1034.i.i, align 4, !tbaa !43
  %indvars.iv.next917.i.i = add nuw nsw i64 %indvars.iv916.i.i, 1
  %i.ahi = trunc nuw i64 %indvars.iv916.i.i to i32
  %i.ahj = icmp slt i32 %i.ahi, 63
  br i1 %i.ahj, label %vec.epilog.scalar.ph356, label %._crit_edge820.i.i, !llvm.loop !1424

.loopexit738.i.i:                                 ; preds = %._crit_edge820.i.i, %_ZL18ggml_vec_scale_f32iPff.exit.i264.i
  br i1 %i.rf, label %.preheader736.i.i, label %_ZL18ggml_vec_scale_f32iPff.exit524.i.i

.preheader736.i.i:                                ; preds = %.loopexit738.i.i, %.preheader736.i.i
  %indvars.iv.i517.i.i = phi i64 [ %indvars.iv.next.i518.i.i.7, %.preheader736.i.i ], [ 0, %.loopexit738.i.i ] ; 9 uses
  %i.ahk = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv.i517.i.i ; 2 uses
  %i.ahl = load float, ptr %i.ahk, align 4, !tbaa !43
  %i.ahm = tail call float @tanhf(float noundef %i.ahl) #18
  store float %i.ahm, ptr %i.ahk, align 4, !tbaa !43
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv.i517.i.i
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 4 ; 2 uses
  %i.ahp = load float, ptr %i.aho, align 4, !tbaa !43
  %i.ahq = tail call float @tanhf(float noundef %i.ahp) #18
  store float %i.ahq, ptr %i.aho, align 4, !tbaa !43
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv.i517.i.i
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8 ; 2 uses
  %i.aht = load float, ptr %i.ahs, align 4, !tbaa !43
  %i.ahu = tail call float @tanhf(float noundef %i.aht) #18
  store float %i.ahu, ptr %i.ahs, align 4, !tbaa !43
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv.i517.i.i
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 12 ; 2 uses
  %i.ahx = load float, ptr %i.ahw, align 4, !tbaa !43
  %i.ahy = tail call float @tanhf(float noundef %i.ahx) #18
  store float %i.ahy, ptr %i.ahw, align 4, !tbaa !43
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv.i517.i.i
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 16 ; 2 uses
  %i.aib = load float, ptr %i.aia, align 4, !tbaa !43
  %i.aic = tail call float @tanhf(float noundef %i.aib) #18
  store float %i.aic, ptr %i.aia, align 4, !tbaa !43
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv.i517.i.i
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 20 ; 2 uses
  %i.aif = load float, ptr %i.aie, align 4, !tbaa !43
  %i.aig = tail call float @tanhf(float noundef %i.aif) #18
  store float %i.aig, ptr %i.aie, align 4, !tbaa !43
  %i.aih = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv.i517.i.i
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 24 ; 2 uses
  %i.aij = load float, ptr %i.aii, align 4, !tbaa !43
  %i.aik = tail call float @tanhf(float noundef %i.aij) #18
  store float %i.aik, ptr %i.aii, align 4, !tbaa !43
  %i.ail = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv.i517.i.i
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 28 ; 2 uses
  %i.ain = load float, ptr %i.aim, align 4, !tbaa !43
  %i.aio = tail call float @tanhf(float noundef %i.ain) #18
  store float %i.aio, ptr %i.aim, align 4, !tbaa !43
  %indvars.iv.next.i518.i.i.7 = add nuw nsw i64 %indvars.iv.i517.i.i, 8 ; 2 uses
  %exitcond.not.i519.i.i.7 = icmp eq i64 %indvars.iv.next.i518.i.i.7, 4096
  br i1 %exitcond.not.i519.i.i.7, label %.preheader27.i520.i.i, label %.preheader736.i.i, !llvm.loop !1425

.preheader27.i520.i.i:                            ; preds = %.preheader736.i.i, %.preheader27.i520.i.i
  %indvars.iv.i521.i.i = phi i64 [ %indvars.iv.next.i522.i.i.1, %.preheader27.i520.i.i ], [ 0, %.preheader736.i.i ] ; 3 uses
  %i.aip = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv.i521.i.i ; 5 uses
  %i.aiq = load <16 x float>, ptr %i.aip, align 1, !tbaa !56
  %i.air = fmul <16 x float> %i.sz, %i.aiq
  store <16 x float> %i.air, ptr %i.aip, align 1, !tbaa !56
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aip, i64 64 ; 2 uses
  %i.ait = load <16 x float>, ptr %i.ais, align 1, !tbaa !56
  %i.aiu = fmul <16 x float> %i.sz, %i.ait
  store <16 x float> %i.aiu, ptr %i.ais, align 1, !tbaa !56
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aip, i64 128 ; 2 uses
  %i.aiw = load <16 x float>, ptr %i.aiv, align 1, !tbaa !56
  %i.aix = fmul <16 x float> %i.sz, %i.aiw
  store <16 x float> %i.aix, ptr %i.aiv, align 1, !tbaa !56
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aip, i64 192 ; 2 uses
  %i.aiz = load <16 x float>, ptr %i.aiy, align 1, !tbaa !56
  %i.aja = fmul <16 x float> %i.sz, %i.aiz
  store <16 x float> %i.aja, ptr %i.aiy, align 1, !tbaa !56
  %indvars.iv.next.i522.i.i = or disjoint i64 %indvars.iv.i521.i.i, 64 ; 2 uses
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv.next.i522.i.i ; 5 uses
  %i.ajc = load <16 x float>, ptr %i.ajb, align 1, !tbaa !56
  %i.ajd = fmul <16 x float> %i.sz, %i.ajc
  store <16 x float> %i.ajd, ptr %i.ajb, align 1, !tbaa !56
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajb, i64 64 ; 2 uses
  %i.ajf = load <16 x float>, ptr %i.aje, align 1, !tbaa !56
  %i.ajg = fmul <16 x float> %i.sz, %i.ajf
  store <16 x float> %i.ajg, ptr %i.aje, align 1, !tbaa !56
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajb, i64 128 ; 2 uses
  %i.aji = load <16 x float>, ptr %i.ajh, align 1, !tbaa !56
  %i.ajj = fmul <16 x float> %i.sz, %i.aji
  store <16 x float> %i.ajj, ptr %i.ajh, align 1, !tbaa !56
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajb, i64 192 ; 2 uses
  %i.ajl = load <16 x float>, ptr %i.ajk, align 1, !tbaa !56
  %i.ajm = fmul <16 x float> %i.sz, %i.ajl
  store <16 x float> %i.ajm, ptr %i.ajk, align 1, !tbaa !56
  %indvars.iv.next.i522.i.i.1 = add nuw nsw i64 %indvars.iv.i521.i.i, 128
  %i.ajn = icmp samesign ult i64 %indvars.iv.next.i522.i.i, 4032
  br i1 %i.ajn, label %.preheader27.i520.i.i, label %_ZL18ggml_vec_scale_f32iPff.exit524.i.i, !llvm.loop !2

_ZL18ggml_vec_scale_f32iPff.exit524.i.i:          ; preds = %.preheader27.i520.i.i, %.loopexit738.i.i
  br i1 %.not511.i.i, label %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.i.i, label %.lr.ph.i.i.i

.preheader.loopexit.i.i.i:                        ; preds = %.lr.ph.i.i.i
  %i.ajo = trunc nuw nsw i64 %indvars.iv.next.i528.i.i to i32
  %i.ajp = icmp sgt i32 %i.xu, %i.ajo
  br i1 %i.ajp, label %iter.check328, label %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.i.i

iter.check328:                                    ; preds = %.preheader.loopexit.i.i.i
  br i1 %min.iters.check310.a, label %.lr.ph22.i.i.i.preheader, label %vector.main.loop.iter.check311

vector.main.loop.iter.check311:                   ; preds = %iter.check328
  br i1 %min.iters.check312, label %vec.epilog.vector.body335.preheader, label %vector.ph313

vector.ph313:                                     ; preds = %vector.main.loop.iter.check311
  %i.ajq = add i64 %indvars.iv.next.i528.i.i, %n.vec314
  br label %vector.body315

vector.body315:                                   ; preds = %vector.ph313, %vector.body315
  %index316 = phi i64 [ 0, %vector.ph313 ], [ %index.next325, %vector.body315 ] ; 2 uses
  %i.ajr = add nuw i64 %indvars.iv.next.i528.i.i, %index316 ; 2 uses
  %i.ajs = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %i.ajr ; 5 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 32 ; 2 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajs, i64 64 ; 2 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajs, i64 96 ; 2 uses
  %wide.load317.a = load <8 x float>, ptr %i.ajs, align 4, !tbaa !43
  %wide.load318.a = load <8 x float>, ptr %i.ajt, align 4, !tbaa !43
  %wide.load319.a = load <8 x float>, ptr %i.aju, align 4, !tbaa !43
  %wide.load320.a = load <8 x float>, ptr %i.ajv, align 4, !tbaa !43
  %i.ajw = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %i.ajr ; 4 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajw, i64 32
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajw, i64 64
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajw, i64 96
  %wide.load321.a = load <8 x float>, ptr %i.ajw, align 4, !tbaa !43
  %wide.load322.a = load <8 x float>, ptr %i.ajx, align 4, !tbaa !43
  %wide.load323 = load <8 x float>, ptr %i.ajy, align 4, !tbaa !43
  %wide.load324 = load <8 x float>, ptr %i.ajz, align 4, !tbaa !43
  %i.aka = fadd <8 x float> %wide.load317.a, %wide.load321.a
  %i.akb = fadd <8 x float> %wide.load318.a, %wide.load322.a
  %i.akc = fadd <8 x float> %wide.load319.a, %wide.load323
  %i.akd = fadd <8 x float> %wide.load320.a, %wide.load324
  store <8 x float> %i.aka, ptr %i.ajs, align 4, !tbaa !43
  store <8 x float> %i.akb, ptr %i.ajt, align 4, !tbaa !43
  store <8 x float> %i.akc, ptr %i.aju, align 4, !tbaa !43
  store <8 x float> %i.akd, ptr %i.ajv, align 4, !tbaa !43
  %index.next325 = add nuw i64 %index316, 32      ; 2 uses
  %i.ake = icmp eq i64 %index.next325, %n.vec314
  br i1 %i.ake, label %middle.block326, label %vector.body315, !llvm.loop !1426

middle.block326:                                  ; preds = %vector.body315
  br i1 %cmp.n327, label %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.i.i, label %vec.epilog.iter.check329

vec.epilog.iter.check329:                         ; preds = %middle.block326
  br i1 %min.epilog.iters.check331, label %.lr.ph22.i.i.i.preheader, label %vec.epilog.vector.body335.preheader, !prof !50

vec.epilog.vector.body335.preheader:              ; preds = %vector.main.loop.iter.check311, %vec.epilog.iter.check329
  %index336.ph = phi i64 [ 0, %vector.main.loop.iter.check311 ], [ %n.vec314, %vec.epilog.iter.check329 ]
  br label %vec.epilog.vector.body335

.lr.ph22.i.i.i.preheader:                         ; preds = %iter.check328, %vec.epilog.iter.check329
  %indvars.iv24.i.i.i.ph = phi i64 [ %i.ajq, %vec.epilog.iter.check329 ], [ %indvars.iv.next.i528.i.i, %iter.check328 ]
  br label %.lr.ph22.i.i.i

vec.epilog.vector.body335:                        ; preds = %vec.epilog.vector.body335.preheader, %vec.epilog.vector.body335
  %index336 = phi i64 [ %index.next339, %vec.epilog.vector.body335 ], [ %index336.ph, %vec.epilog.vector.body335.preheader ] ; 2 uses
  %i.akf = add nuw i64 %indvars.iv.next.i528.i.i, %index336 ; 2 uses
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %i.akf ; 2 uses
  %wide.load337 = load <8 x float>, ptr %i.akg, align 4, !tbaa !43
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %i.akf
  %wide.load338 = load <8 x float>, ptr %i.akh, align 4, !tbaa !43
  %i.aki = fadd <8 x float> %wide.load337, %wide.load338
  store <8 x float> %i.aki, ptr %i.akg, align 4, !tbaa !43
  %index.next339 = add nuw i64 %index336, 8       ; 2 uses
  %i.akj = icmp eq i64 %index.next339, %i.yf
  br i1 %i.akj, label %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.i.i, label %vec.epilog.vector.body335, !llvm.loop !1427

.lr.ph.i.i.i:                                     ; preds = %_ZL18ggml_vec_scale_f32iPff.exit524.i.i, %.lr.ph.i.i.i
  %indvars.iv.i527.i.i = phi i64 [ %indvars.iv.next.i528.i.i, %.lr.ph.i.i.i ], [ 0, %_ZL18ggml_vec_scale_f32iPff.exit524.i.i ] ; 3 uses
  %i.akk = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv.i527.i.i ; 2 uses
  %i.akl = load <8 x float>, ptr %i.akk, align 1, !tbaa !56
  %i.akm = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %indvars.iv.i527.i.i
  %i.akn = load <8 x float>, ptr %i.akm, align 1, !tbaa !56
  %i.ako = fadd <8 x float> %i.akl, %i.akn
  store <8 x float> %i.ako, ptr %i.akk, align 1, !tbaa !56
  %indvars.iv.next.i528.i.i = add nuw nsw i64 %indvars.iv.i527.i.i, 8 ; 7 uses
  %i.akp = or disjoint i64 %indvars.iv.next.i528.i.i, 7
  %i.akq = icmp samesign ult i64 %i.akp, %i.xv
  br i1 %i.akq, label %.lr.ph.i.i.i, label %.preheader.loopexit.i.i.i, !llvm.loop !0

.lr.ph22.i.i.i:                                   ; preds = %.lr.ph22.i.i.i.preheader, %.lr.ph22.i.i.i
  %indvars.iv24.i.i.i = phi i64 [ %indvars.iv.next25.i.i.i, %.lr.ph22.i.i.i ], [ %indvars.iv24.i.i.i.ph, %.lr.ph22.i.i.i.preheader ] ; 3 uses
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv24.i.i.i ; 2 uses
  %i.aks = load float, ptr %i.akr, align 4, !tbaa !43
  %i.akt = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %indvars.iv24.i.i.i
  %i.aku = load float, ptr %i.akt, align 4, !tbaa !43
  %i.akv = fadd float %i.aks, %i.aku
  store float %i.akv, ptr %i.akr, align 4, !tbaa !43
  %indvars.iv.next25.i.i.i = add nuw nsw i64 %indvars.iv24.i.i.i, 1 ; 2 uses
  %exitcond.not.i526.i.i = icmp eq i64 %indvars.iv.next25.i.i.i, %i.xv
  br i1 %exitcond.not.i526.i.i, label %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.i.i, label %.lr.ph22.i.i.i, !llvm.loop !1428

_ZL16ggml_vec_add_f32iPfPKfS1_.exit.i.i:          ; preds = %vec.epilog.vector.body335, %.lr.ph22.i.i.i, %middle.block326, %.preheader.loopexit.i.i.i, %_ZL18ggml_vec_scale_f32iPff.exit524.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  br label %.lr.ph.i530.i.i

.lr.ph.i530.i.i:                                  ; preds = %bb.by, %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.i.i
end_hunk_0
begin_hunk_1_@ggml_compute_forward_flash_attn_ext:bb.a
  %i.arh = getelementptr inbounds nuw i8, ptr %i.akw, i64 224
  %i.ari = load float, ptr %i.arh, align 4, !tbaa !43 ; 2 uses
  %i.arj = fcmp ogt float %.010..i.55.i.i, %i.ari
  %.010..i.56.i.i = select i1 %i.arj, float %.010..i.55.i.i, float %i.ari ; 2 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %i.akw, i64 228
  %i.arl = load float, ptr %i.ark, align 4, !tbaa !43 ; 2 uses
  %i.arm = fcmp ogt float %.010..i.56.i.i, %i.arl
  %.010..i.57.i.i = select i1 %i.arm, float %.010..i.56.i.i, float %i.arl ; 2 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %i.akw, i64 232
  %i.aro = load float, ptr %i.arn, align 4, !tbaa !43 ; 2 uses
  %i.arp = fcmp ogt float %.010..i.57.i.i, %i.aro
  %.010..i.58.i.i = select i1 %i.arp, float %.010..i.57.i.i, float %i.aro ; 2 uses
  %i.arq = getelementptr inbounds nuw i8, ptr %i.akw, i64 236
  %i.arr = load float, ptr %i.arq, align 4, !tbaa !43 ; 2 uses
  %i.ars = fcmp ogt float %.010..i.58.i.i, %i.arr
  %.010..i.59.i.i = select i1 %i.ars, float %.010..i.58.i.i, float %i.arr ; 2 uses
  %i.art = getelementptr inbounds nuw i8, ptr %i.akw, i64 240
  %i.aru = load float, ptr %i.art, align 4, !tbaa !43 ; 2 uses
  %i.arv = fcmp ogt float %.010..i.59.i.i, %i.aru
  %.010..i.60.i.i = select i1 %i.arv, float %.010..i.59.i.i, float %i.aru ; 2 uses
  %i.arw = getelementptr inbounds nuw i8, ptr %i.akw, i64 244
  %i.arx = load float, ptr %i.arw, align 4, !tbaa !43 ; 2 uses
  %i.ary = fcmp ogt float %.010..i.60.i.i, %i.arx
  %.010..i.61.i.i = select i1 %i.ary, float %.010..i.60.i.i, float %i.arx ; 2 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %i.akw, i64 248
  %i.asa = load float, ptr %i.arz, align 4, !tbaa !43 ; 2 uses
  %i.asb = fcmp ogt float %.010..i.61.i.i, %i.asa
  %.010..i.62.i.i = select i1 %i.asb, float %.010..i.61.i.i, float %i.asa ; 2 uses
  %i.asc = getelementptr inbounds nuw i8, ptr %i.akw, i64 252
  %i.asd = load float, ptr %i.asc, align 4, !tbaa !43 ; 2 uses
  %i.ase = fcmp ogt float %.010..i.62.i.i, %i.asd
  %.010..i.63.i.i = select i1 %i.ase, float %.010..i.62.i.i, float %i.asd ; 2 uses
  %i.asf = fcmp oeq float %.010..i.63.i.i, -inf
  br i1 %i.asf, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.lr.ph.i530.i.i
  %i.asg = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv923.i.i
  store i8 1, ptr %i.asg, align 1, !tbaa !1478
  br label %bb.by

bb.bv:                                            ; preds = %.lr.ph.i530.i.i
  %i.ash = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv923.i.i ; 2 uses
  %i.asi = load float, ptr %i.ash, align 4, !tbaa !43 ; 3 uses
  %i.asj = tail call nsz float @llvm.maxnum.f32(float %i.asi, float %.010..i.63.i.i) ; 4 uses
  %i.ask = fcmp ogt float %i.asj, %i.asi
  br i1 %i.ask, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.asl = fsub float %i.asi, %i.asj
  %i.asm = tail call float @expf(float noundef %i.asl) #18 ; 5 uses
  %i.asn = mul nsw i64 %indvars.iv923.i.i, %i.qb
  %i.aso = getelementptr inbounds [4 x i8], ptr %i.vk, i64 %i.asn ; 4 uses
  %i.asp = insertelement <16 x float> poison, float %i.asm, i64 0
  %i.asq = shufflevector <16 x float> %i.asp, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br i1 %i.tc, label %.preheader27.i539.i.i, label %.preheader.i535.i.i

.preheader27.i539.i.i:                            ; preds = %bb.bw, %.preheader27.i539.i.i
  %indvars.iv.i540.i.i = phi i64 [ %indvars.iv.next.i541.i.i, %.preheader27.i539.i.i ], [ 0, %bb.bw ] ; 2 uses
  %i.asr = getelementptr inbounds nuw [4 x i8], ptr %i.aso, i64 %indvars.iv.i540.i.i ; 5 uses
  %i.ass = load <16 x float>, ptr %i.asr, align 1, !tbaa !56
  %i.ast = fmul <16 x float> %i.asq, %i.ass
  store <16 x float> %i.ast, ptr %i.asr, align 1, !tbaa !56
  %i.asu = getelementptr inbounds nuw i8, ptr %i.asr, i64 64 ; 2 uses
  %i.asv = load <16 x float>, ptr %i.asu, align 1, !tbaa !56
  %i.asw = fmul <16 x float> %i.asq, %i.asv
  store <16 x float> %i.asw, ptr %i.asu, align 1, !tbaa !56
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asr, i64 128 ; 2 uses
  %i.asy = load <16 x float>, ptr %i.asx, align 1, !tbaa !56
  %i.asz = fmul <16 x float> %i.asq, %i.asy
  store <16 x float> %i.asz, ptr %i.asx, align 1, !tbaa !56
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asr, i64 192 ; 2 uses
  %i.atb = load <16 x float>, ptr %i.ata, align 1, !tbaa !56
  %i.atc = fmul <16 x float> %i.asq, %i.atb
  store <16 x float> %i.atc, ptr %i.ata, align 1, !tbaa !56
  %indvars.iv.next.i541.i.i = add nuw nsw i64 %indvars.iv.i540.i.i, 64 ; 2 uses
  %i.atd = icmp samesign ult i64 %indvars.iv.next.i541.i.i, %i.td
  br i1 %i.atd, label %.preheader27.i539.i.i, label %.preheader.i535.i.i, !llvm.loop !2

.preheader.i535.i.i:                              ; preds = %.preheader27.i539.i.i, %bb.bw
  br i1 %.not.i.i260.i, label %_ZL18ggml_vec_scale_f32iPff.exit542.i.i, label %iter.check294

iter.check294:                                    ; preds = %.preheader.i535.i.i
  br i1 %min.iters.check278.a, label %.lr.ph.i537.i.i.preheader, label %vector.main.loop.iter.check279

vector.main.loop.iter.check279:                   ; preds = %iter.check294
  br i1 %min.iters.check280, label %vec.epilog.ph298, label %vector.ph281

vector.ph281:                                     ; preds = %vector.main.loop.iter.check279
  %broadcast.splatinsert283 = insertelement <8 x float> poison, float %i.asm, i64 0
  %broadcast.splat284 = shufflevector <8 x float> %broadcast.splatinsert283, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.aso, i64 %i.te
  br label %vector.body285

vector.body285:                                   ; preds = %vector.ph281, %vector.body285
  %index286 = phi i64 [ 0, %vector.ph281 ], [ %index.next291, %vector.body285 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index286 ; 5 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %gep, i64 32 ; 2 uses
  %i.atf = getelementptr inbounds nuw i8, ptr %gep, i64 64 ; 2 uses
  %i.atg = getelementptr inbounds nuw i8, ptr %gep, i64 96 ; 2 uses
  %wide.load287.a = load <8 x float>, ptr %gep, align 4, !tbaa !43
  %wide.load288.a = load <8 x float>, ptr %i.ate, align 4, !tbaa !43
  %wide.load289 = load <8 x float>, ptr %i.atf, align 4, !tbaa !43
  %wide.load290 = load <8 x float>, ptr %i.atg, align 4, !tbaa !43
  %i.ath = fmul <8 x float> %broadcast.splat284, %wide.load287.a
  %i.ati = fmul <8 x float> %broadcast.splat284, %wide.load288.a
  %i.atj = fmul <8 x float> %broadcast.splat284, %wide.load289
  %i.atk = fmul <8 x float> %broadcast.splat284, %wide.load290
  store <8 x float> %i.ath, ptr %gep, align 4, !tbaa !43
  store <8 x float> %i.ati, ptr %i.ate, align 4, !tbaa !43
  store <8 x float> %i.atj, ptr %i.atf, align 4, !tbaa !43
  store <8 x float> %i.atk, ptr %i.atg, align 4, !tbaa !43
  %index.next291 = add nuw i64 %index286, 32      ; 2 uses
  %i.atl = icmp eq i64 %index.next291, %n.vec282
  br i1 %i.atl, label %middle.block292, label %vector.body285, !llvm.loop !1429

middle.block292:                                  ; preds = %vector.body285
  br i1 %cmp.n293, label %_ZL18ggml_vec_scale_f32iPff.exit542.i.i, label %vec.epilog.iter.check295

vec.epilog.iter.check295:                         ; preds = %middle.block292
  br i1 %min.epilog.iters.check297, label %.lr.ph.i537.i.i.preheader, label %vec.epilog.ph298, !prof !50

vec.epilog.ph298:                                 ; preds = %vector.main.loop.iter.check279, %vec.epilog.iter.check295
  %vec.epilog.resume.val299 = phi i64 [ %n.vec282, %vec.epilog.iter.check295 ], [ 0, %vector.main.loop.iter.check279 ]
  %broadcast.splatinsert301 = insertelement <8 x float> poison, float %i.asm, i64 0
  %broadcast.splat302 = shufflevector <8 x float> %broadcast.splatinsert301, <8 x float> poison, <8 x i32> zeroinitializer
  %invariant.gep649.a = getelementptr [4 x i8], ptr %i.aso, i64 %i.te
  br label %vec.epilog.vector.body303

vec.epilog.vector.body303:                        ; preds = %vec.epilog.vector.body303, %vec.epilog.ph298
  %index304 = phi i64 [ %vec.epilog.resume.val299, %vec.epilog.ph298 ], [ %index.next306, %vec.epilog.vector.body303 ] ; 2 uses
  %gep650.a = getelementptr [4 x i8], ptr %invariant.gep649.a, i64 %index304 ; 2 uses
  %wide.load305 = load <8 x float>, ptr %gep650.a, align 4, !tbaa !43
  %i.atm = fmul <8 x float> %broadcast.splat302, %wide.load305
  store <8 x float> %i.atm, ptr %gep650.a, align 4, !tbaa !43
  %index.next306 = add nuw i64 %index304, 8       ; 2 uses
  %i.atn = icmp eq i64 %index.next306, %n.vec300
  br i1 %i.atn, label %vec.epilog.middle.block307, label %vec.epilog.vector.body303, !llvm.loop !1430

vec.epilog.middle.block307:                       ; preds = %vec.epilog.vector.body303
  br i1 %cmp.n308, label %_ZL18ggml_vec_scale_f32iPff.exit542.i.i, label %.lr.ph.i537.i.i.preheader

.lr.ph.i537.i.i.preheader:                        ; preds = %iter.check294, %vec.epilog.iter.check295, %vec.epilog.middle.block307
  %indvars.iv33.i.i.i.ph = phi i64 [ %i.te, %iter.check294 ], [ %i.ty, %vec.epilog.iter.check295 ], [ %i.ua, %vec.epilog.middle.block307 ]
  br label %.lr.ph.i537.i.i

.lr.ph.i537.i.i:                                  ; preds = %.lr.ph.i537.i.i.preheader, %.lr.ph.i537.i.i
  %indvars.iv33.i.i.i = phi i64 [ %indvars.iv.next34.i.i.i, %.lr.ph.i537.i.i ], [ %indvars.iv33.i.i.i.ph, %.lr.ph.i537.i.i.preheader ] ; 2 uses
  %i.ato = getelementptr inbounds [4 x i8], ptr %i.aso, i64 %indvars.iv33.i.i.i ; 2 uses
  %i.atp = load float, ptr %i.ato, align 4, !tbaa !43
  %i.atq = fmul float %i.asm, %i.atp
  store float %i.atq, ptr %i.ato, align 4, !tbaa !43
  %indvars.iv.next34.i.i.i = add nsw i64 %indvars.iv33.i.i.i, 1 ; 2 uses
  %i.atr = icmp slt i64 %indvars.iv.next34.i.i.i, %i.tf
  br i1 %i.atr, label %.lr.ph.i537.i.i, label %_ZL18ggml_vec_scale_f32iPff.exit542.i.i, !llvm.loop !1431

_ZL18ggml_vec_scale_f32iPff.exit542.i.i:          ; preds = %.lr.ph.i537.i.i, %middle.block292, %vec.epilog.middle.block307, %.preheader.i535.i.i
  %i.ats = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv923.i.i ; 2 uses
  %i.att = load float, ptr %i.ats, align 4, !tbaa !43
  %i.atu = fmul float %i.asm, %i.att
  store float %i.atu, ptr %i.ats, align 4, !tbaa !43
  br label %bb.bx

bb.bx:                                            ; preds = %_ZL18ggml_vec_scale_f32iPff.exit542.i.i, %bb.bv
  store float %i.asj, ptr %i.ash, align 4, !tbaa !43
  %i.atv = tail call double @ggml_vec_soft_max_f32(i32 noundef 64, ptr noundef nonnull %i.akw, ptr noundef nonnull %i.akw, float noundef %i.asj)
  %i.atw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv923.i.i ; 2 uses
  %i.atx = load float, ptr %i.atw, align 4, !tbaa !43
  %i.aty = fpext float %i.atx to double
  %i.atz = fadd double %i.atv, %i.aty
  %i.aua = fptrunc double %i.atz to float
  store float %i.aua, ptr %i.atw, align 4, !tbaa !43
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bu
  %indvars.iv.next924.i.i = add nuw nsw i64 %indvars.iv923.i.i, 1 ; 2 uses
  %exitcond926.not.i.i = icmp eq i64 %indvars.iv.next924.i.i, 64
  br i1 %exitcond926.not.i.i, label %.lr.ph824.i.i, label %.lr.ph.i530.i.i, !llvm.loop !1432

.lr.ph824.i.i:                                    ; preds = %bb.by, %bb.cb
  %indvars.iv927.i.i = phi i64 [ %indvars.iv.next928.i.i, %bb.cb ], [ 0, %bb.by ] ; 3 uses
  %i.aub = load ptr, ptr %i.tg, align 8, !tbaa !37
  %i.auc = add nuw nsw i64 %indvars.iv927.i.i, %.0440826.i.i
  %i.aud = mul i64 %i.auc, %i.qc
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aub, i64 %i.aud
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aue, i64 %i.xz
  %i.aug = getelementptr inbounds nuw i8, ptr %i.auf, i64 %i.yd ; 2 uses
  %i.auh = mul nsw i64 %indvars.iv927.i.i, %i.qb
  %i.aui = getelementptr inbounds [4 x i8], ptr %i.vx, i64 %i.auh ; 2 uses
  br i1 %i.sp, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %.lr.ph824.i.i
  tail call void @ggml_cpu_fp16_to_fp32(ptr noundef %i.aug, ptr noundef nonnull %i.aui, i64 noundef %i.qb)
  br label %bb.cb

bb.ca:                                            ; preds = %.lr.ph824.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aui, ptr align 1 %i.aug, i64 %i.th, i1 false)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %indvars.iv.next928.i.i = add nuw nsw i64 %indvars.iv927.i.i, 1 ; 2 uses
  %exitcond932.not.i.i = icmp eq i64 %indvars.iv.next928.i.i, %2
  br i1 %exitcond932.not.i.i, label %.preheader734.i.loopexit.i, label %.lr.ph824.i.i, !llvm.loop !1433

bb.cc:                                            ; preds = %bb.cp
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1481)
  br label %.preheader157.i543.i.i

.preheader157.i543.i.i:                           ; preds = %._crit_edge.i671.i.i, %bb.cc
  %i.auj = phi i64 [ 4, %bb.cc ], [ %i.bfq, %._crit_edge.i671.i.i ] ; 2 uses
  %.0107201.i544.i.i = phi ptr [ %i.vk, %bb.cc ], [ %i.bfp, %._crit_edge.i671.i.i ] ; 4 uses
  %.0109199.i545.i.i = phi ptr [ %i.vi, %bb.cc ], [ %i.bfo, %._crit_edge.i671.i.i ] ; 15 uses
  br i1 %.not121184.i.i.i, label %.preheader156.i.i.i, label %.lr.ph.i546.i.i

.preheader156.i.i.i:                              ; preds = %_ZL17simd_gemm_ukernelILi4ELi4EEvPfPKfS2_ii.exit.i605.i.i, %.preheader157.i543.i.i
  %.0102.lcssa.i.i.i = phi i64 [ 0, %.preheader157.i543.i.i ], [ %i.awk, %_ZL17simd_gemm_ukernelILi4ELi4EEvPfPKfS2_ii.exit.i605.i.i ] ; 3 uses
  %i.auk = or disjoint i64 %.0102.lcssa.i.i.i, 16 ; 2 uses
  %.not122187.i622.i.i = icmp sgt i64 %i.auk, %i.tf
  br i1 %.not122187.i622.i.i, label %.preheader155.i639.i.i, label %.critedge52.lr.ph.i.us.i624.i.i

.critedge52.lr.ph.i.us.i624.i.i:                  ; preds = %.preheader156.i.i.i, %_ZL17simd_gemm_ukernelILi4ELi1EEvPfPKfS2_ii.exit.loopexit.us.i637.i.i
  %i.aul = phi i64 [ %i.awj, %_ZL17simd_gemm_ukernelILi4ELi1EEvPfPKfS2_ii.exit.loopexit.us.i637.i.i ], [ %i.auk, %.preheader156.i.i.i ] ; 3 uses
  %.1103188.us.i625.i.i = phi i64 [ %i.aul, %_ZL17simd_gemm_ukernelILi4ELi1EEvPfPKfS2_ii.exit.loopexit.us.i637.i.i ], [ %.0102.lcssa.i.i.i, %.preheader156.i.i.i ] ; 2 uses
  %i.aum = getelementptr inbounds nuw [4 x i8], ptr %.0107201.i544.i.i, i64 %.1103188.us.i625.i.i ; 5 uses
  %i.aun = getelementptr inbounds nuw [4 x i8], ptr %i.vx, i64 %.1103188.us.i625.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1484)
  %i.auo = load <16 x float>, ptr %i.aum, align 1, !tbaa !56, !alias.scope !1485
  %i.aup = getelementptr inbounds [4 x i8], ptr %i.aum, i64 %i.tf ; 2 uses
  %i.auq = load <16 x float>, ptr %i.aup, align 1, !tbaa !56, !alias.scope !1485
  %i.aur = getelementptr inbounds nuw i8, ptr %i.aum, i64 %.idx.i.i.i.i ; 2 uses
  %i.aus = load <16 x float>, ptr %i.aur, align 1, !tbaa !56, !alias.scope !1485
  %i.aut = getelementptr inbounds nuw i8, ptr %i.aum, i64 %.idx109.i.i.i.i ; 2 uses
  %i.auu = load <16 x float>, ptr %i.aut, align 1, !tbaa !56, !alias.scope !1485
  br label %.critedge52.i.us.i626.i.i

.critedge52.i.us.i626.i.i:                        ; preds = %.critedge52.i.us.i626.i.i, %.critedge52.lr.ph.i.us.i624.i.i
  %.sroa.14.1.i.us.i627.i.i = phi <16 x float> [ %i.auu, %.critedge52.lr.ph.i.us.i624.i.i ], [ %i.awh, %.critedge52.i.us.i626.i.i ]
  %.sroa.10.1.i128.us.i628.i.i = phi <16 x float> [ %i.aus, %.critedge52.lr.ph.i.us.i624.i.i ], [ %i.awd, %.critedge52.i.us.i626.i.i ]
  %.sroa.6.1.i129.us.i629.i.i = phi <16 x float> [ %i.auq, %.critedge52.lr.ph.i.us.i624.i.i ], [ %i.avz, %.critedge52.i.us.i626.i.i ]
  %.sroa.0.1.i.us.i630.i.i = phi <16 x float> [ %i.auo, %.critedge52.lr.ph.i.us.i624.i.i ], [ %i.avv, %.critedge52.i.us.i626.i.i ]
  %.04760.i130.us.i631.i.i = phi i64 [ 0, %.critedge52.lr.ph.i.us.i624.i.i ], [ %i.awi, %.critedge52.i.us.i626.i.i ] ; 4 uses
  %i.auv = mul nuw nsw i64 %.04760.i130.us.i631.i.i, %i.tf
  %i.auw = getelementptr inbounds [4 x i8], ptr %i.aun, i64 %i.auv
  %i.aux = load <16 x float>, ptr %i.auw, align 1, !tbaa !56, !alias.scope !1486 ; 4 uses
  %invariant.gep.i131.us.i632.i.i = getelementptr [4 x i8], ptr %.0109199.i545.i.i, i64 %.04760.i130.us.i631.i.i ; 4 uses
  %i.auy = load float, ptr %invariant.gep.i131.us.i632.i.i, align 4, !tbaa !43, !alias.scope !1487
  %i.auz = insertelement <16 x float> poison, float %i.auy, i64 0
  %i.ava = shufflevector <16 x float> %i.auz, <16 x float> poison, <16 x i32> zeroinitializer
  %i.avb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aux, <16 x float> %i.ava, <16 x float> %.sroa.0.1.i.us.i630.i.i)
  %gep.1.i132.us.i633.i.i = getelementptr i8, ptr %invariant.gep.i131.us.i632.i.i, i64 256
  %i.avc = load float, ptr %gep.1.i132.us.i633.i.i, align 4, !tbaa !43, !alias.scope !1487
  %i.avd = insertelement <16 x float> poison, float %i.avc, i64 0
  %i.ave = shufflevector <16 x float> %i.avd, <16 x float> poison, <16 x i32> zeroinitializer
  %i.avf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aux, <16 x float> %i.ave, <16 x float> %.sroa.6.1.i129.us.i629.i.i)
  %gep.2.i133.us.i634.i.i = getelementptr i8, ptr %invariant.gep.i131.us.i632.i.i, i64 512
  %i.avg = load float, ptr %gep.2.i133.us.i634.i.i, align 4, !tbaa !43, !alias.scope !1487
  %i.avh = insertelement <16 x float> poison, float %i.avg, i64 0
  %i.avi = shufflevector <16 x float> %i.avh, <16 x float> poison, <16 x i32> zeroinitializer
  %i.avj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aux, <16 x float> %i.avi, <16 x float> %.sroa.10.1.i128.us.i628.i.i)
  %gep.3.i134.us.i635.i.i = getelementptr i8, ptr %invariant.gep.i131.us.i632.i.i, i64 768
  %i.avk = load float, ptr %gep.3.i134.us.i635.i.i, align 4, !tbaa !43, !alias.scope !1487
  %i.avl = insertelement <16 x float> poison, float %i.avk, i64 0
  %i.avm = shufflevector <16 x float> %i.avl, <16 x float> poison, <16 x i32> zeroinitializer
  %i.avn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aux, <16 x float> %i.avm, <16 x float> %.sroa.14.1.i.us.i627.i.i)
  %i.avo = or disjoint i64 %.04760.i130.us.i631.i.i, 1 ; 2 uses
  %i.avp = mul nuw nsw i64 %i.avo, %i.tf
  %i.avq = getelementptr inbounds [4 x i8], ptr %i.aun, i64 %i.avp
  %i.avr = load <16 x float>, ptr %i.avq, align 1, !tbaa !56, !alias.scope !1486 ; 4 uses
  %invariant.gep.i131.us.i632.i.i.1 = getelementptr [4 x i8], ptr %.0109199.i545.i.i, i64 %i.avo ; 4 uses
  %i.avs = load float, ptr %invariant.gep.i131.us.i632.i.i.1, align 4, !tbaa !43, !alias.scope !1487
  %i.avt = insertelement <16 x float> poison, float %i.avs, i64 0
  %i.avu = shufflevector <16 x float> %i.avt, <16 x float> poison, <16 x i32> zeroinitializer
  %i.avv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avr, <16 x float> %i.avu, <16 x float> %i.avb) ; 2 uses
  %gep.1.i132.us.i633.i.i.1 = getelementptr i8, ptr %invariant.gep.i131.us.i632.i.i.1, i64 256
  %i.avw = load float, ptr %gep.1.i132.us.i633.i.i.1, align 4, !tbaa !43, !alias.scope !1487
  %i.avx = insertelement <16 x float> poison, float %i.avw, i64 0
  %i.avy = shufflevector <16 x float> %i.avx, <16 x float> poison, <16 x i32> zeroinitializer
  %i.avz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avr, <16 x float> %i.avy, <16 x float> %i.avf) ; 2 uses
  %gep.2.i133.us.i634.i.i.1 = getelementptr i8, ptr %invariant.gep.i131.us.i632.i.i.1, i64 512
  %i.awa = load float, ptr %gep.2.i133.us.i634.i.i.1, align 4, !tbaa !43, !alias.scope !1487
  %i.awb = insertelement <16 x float> poison, float %i.awa, i64 0
  %i.awc = shufflevector <16 x float> %i.awb, <16 x float> poison, <16 x i32> zeroinitializer
  %i.awd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avr, <16 x float> %i.awc, <16 x float> %i.avj) ; 2 uses
  %gep.3.i134.us.i635.i.i.1 = getelementptr i8, ptr %invariant.gep.i131.us.i632.i.i.1, i64 768
  %i.awe = load float, ptr %gep.3.i134.us.i635.i.i.1, align 4, !tbaa !43, !alias.scope !1487
  %i.awf = insertelement <16 x float> poison, float %i.awe, i64 0
  %i.awg = shufflevector <16 x float> %i.awf, <16 x float> poison, <16 x i32> zeroinitializer
  %i.awh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avr, <16 x float> %i.awg, <16 x float> %i.avn) ; 2 uses
  %i.awi = add nuw nsw i64 %.04760.i130.us.i631.i.i, 2 ; 2 uses
  %exitcond.not.i135.us.i636.i.i.1 = icmp eq i64 %i.awi, 64
  br i1 %exitcond.not.i135.us.i636.i.i.1, label %_ZL17simd_gemm_ukernelILi4ELi1EEvPfPKfS2_ii.exit.loopexit.us.i637.i.i, label %.critedge52.i.us.i626.i.i, !llvm.loop !1442

_ZL17simd_gemm_ukernelILi4ELi1EEvPfPKfS2_ii.exit.loopexit.us.i637.i.i: ; preds = %.critedge52.i.us.i626.i.i
  store <16 x float> %i.avv, ptr %i.aum, align 1, !tbaa !56, !alias.scope !1485
  store <16 x float> %i.avz, ptr %i.aup, align 1, !tbaa !56, !alias.scope !1485
  store <16 x float> %i.awd, ptr %i.aur, align 1, !tbaa !56, !alias.scope !1485
  store <16 x float> %i.awh, ptr %i.aut, align 1, !tbaa !56, !alias.scope !1485
  %i.awj = add nuw nsw i64 %i.aul, 16             ; 2 uses
  %.not122.us.i638.i.i = icmp sgt i64 %i.awj, %i.tf
  br i1 %.not122.us.i638.i.i, label %.preheader155.i639.i.i, label %.critedge52.lr.ph.i.us.i624.i.i, !llvm.loop !1443

.lr.ph.i546.i.i:                                  ; preds = %.preheader157.i543.i.i, %_ZL17simd_gemm_ukernelILi4ELi4EEvPfPKfS2_ii.exit.i605.i.i
  %i.awk = phi i64 [ %i.axv, %_ZL17simd_gemm_ukernelILi4ELi4EEvPfPKfS2_ii.exit.i605.i.i ], [ 64, %.preheader157.i543.i.i ] ; 3 uses
  %.0102185.i.i.i = phi i64 [ %i.awk, %_ZL17simd_gemm_ukernelILi4ELi4EEvPfPKfS2_ii.exit.i605.i.i ], [ 0, %.preheader157.i543.i.i ] ; 2 uses
  %i.awl = getelementptr inbounds nuw [4 x i8], ptr %.0107201.i544.i.i, i64 %.0102185.i.i.i ; 8 uses
  %i.awm = getelementptr inbounds nuw [4 x i8], ptr %i.vx, i64 %.0102185.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  %.sroa.080.0.copyload.i.i547.i.i = load <16 x float>, ptr %i.awl, align 1, !tbaa !56, !alias.scope !1491
  %.sroa.6.0..sroa_idx.i.i548.i.i = getelementptr inbounds nuw i8, ptr %i.awl, i64 64 ; 2 uses
  %.sroa.6.0.copyload.i.i549.i.i = load <16 x float>, ptr %.sroa.6.0..sroa_idx.i.i548.i.i, align 1, !tbaa !56, !alias.scope !1491
  %.sroa.8.0..sroa_idx.i.i550.i.i = getelementptr inbounds nuw i8, ptr %i.awl, i64 128 ; 2 uses
  %.sroa.8.0.copyload.i.i551.i.i = load <16 x float>, ptr %.sroa.8.0..sroa_idx.i.i550.i.i, align 1, !tbaa !56, !alias.scope !1491
  %.sroa.10.0..sroa_idx.i.i552.i.i = getelementptr inbounds nuw i8, ptr %i.awl, i64 192 ; 2 uses
  %.sroa.10.0.copyload.i.i553.i.i = load <16 x float>, ptr %.sroa.10.0..sroa_idx.i.i552.i.i, align 1, !tbaa !56, !alias.scope !1491
  %i.awn = getelementptr inbounds nuw [4 x i8], ptr %i.awl, i64 %i.tf ; 5 uses
  %.sroa.12.256.copyload.i.i554.i.i = load <16 x float>, ptr %i.awn, align 1, !tbaa !56, !alias.scope !1491
  %.sroa.16.256..sroa_idx.i.i555.i.i = getelementptr inbounds nuw i8, ptr %i.awn, i64 64 ; 2 uses
  %.sroa.16.256.copyload.i.i556.i.i = load <16 x float>, ptr %.sroa.16.256..sroa_idx.i.i555.i.i, align 1, !tbaa !56, !alias.scope !1491
  %.sroa.18.256..sroa_idx.i.i557.i.i = getelementptr inbounds nuw i8, ptr %i.awn, i64 128 ; 2 uses
  %.sroa.18.256.copyload.i.i558.i.i = load <16 x float>, ptr %.sroa.18.256..sroa_idx.i.i557.i.i, align 1, !tbaa !56, !alias.scope !1491
  %.sroa.20.256..sroa_idx.i.i559.i.i = getelementptr inbounds nuw i8, ptr %i.awn, i64 192 ; 2 uses
  %.sroa.20.256.copyload.i.i560.i.i = load <16 x float>, ptr %.sroa.20.256..sroa_idx.i.i559.i.i, align 1, !tbaa !56, !alias.scope !1491
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awl, i64 %.idx.i.i.i.i ; 5 uses
  %.sroa.22.512.copyload.i.i561.i.i = load <16 x float>, ptr %i.awo, align 1, !tbaa !56, !alias.scope !1491
  %.sroa.26.512..sroa_idx.i.i562.i.i = getelementptr inbounds nuw i8, ptr %i.awo, i64 64 ; 2 uses
  %.sroa.26.512.copyload.i.i563.i.i = load <16 x float>, ptr %.sroa.26.512..sroa_idx.i.i562.i.i, align 1, !tbaa !56, !alias.scope !1491
  %.sroa.28.512..sroa_idx.i.i564.i.i = getelementptr inbounds nuw i8, ptr %i.awo, i64 128 ; 2 uses
  %.sroa.28.512.copyload.i.i565.i.i = load <16 x float>, ptr %.sroa.28.512..sroa_idx.i.i564.i.i, align 1, !tbaa !56, !alias.scope !1491
  %.sroa.30.512..sroa_idx.i.i566.i.i = getelementptr inbounds nuw i8, ptr %i.awo, i64 192 ; 2 uses
  %.sroa.30.512.copyload.i.i567.i.i = load <16 x float>, ptr %.sroa.30.512..sroa_idx.i.i566.i.i, align 1, !tbaa !56, !alias.scope !1491
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awl, i64 %.idx109.i.i.i.i ; 5 uses
  %.sroa.32.768.copyload.i.i568.i.i = load <16 x float>, ptr %i.awp, align 1, !tbaa !56, !alias.scope !1491
  %.sroa.36.768..sroa_idx.i.i569.i.i = getelementptr inbounds nuw i8, ptr %i.awp, i64 64 ; 2 uses
  %.sroa.36.768.copyload.i.i570.i.i = load <16 x float>, ptr %.sroa.36.768..sroa_idx.i.i569.i.i, align 1, !tbaa !56, !alias.scope !1491
  %.sroa.38.768..sroa_idx.i.i571.i.i = getelementptr inbounds nuw i8, ptr %i.awp, i64 128 ; 2 uses
  %.sroa.38.768.copyload.i.i572.i.i = load <16 x float>, ptr %.sroa.38.768..sroa_idx.i.i571.i.i, align 1, !tbaa !56, !alias.scope !1491
  %.sroa.40.768..sroa_idx.i.i573.i.i = getelementptr inbounds nuw i8, ptr %i.awp, i64 192 ; 2 uses
  %.sroa.40.768.copyload.i.i574.i.i = load <16 x float>, ptr %.sroa.40.768..sroa_idx.i.i573.i.i, align 1, !tbaa !56, !alias.scope !1491
  br label %.preheader52.i.i575.i.i

.preheader52.i.i575.i.i:                          ; preds = %.preheader52.i.i575.i.i, %.lr.ph.i546.i.i
  %.sroa.40.1.i.i576.i.i = phi <16 x float> [ %i.axt, %.preheader52.i.i575.i.i ], [ %.sroa.40.768.copyload.i.i574.i.i, %.lr.ph.i546.i.i ]
  %.sroa.38.1.i.i577.i.i = phi <16 x float> [ %i.axs, %.preheader52.i.i575.i.i ], [ %.sroa.38.768.copyload.i.i572.i.i, %.lr.ph.i546.i.i ]
  %.sroa.36.1.i.i578.i.i = phi <16 x float> [ %i.axr, %.preheader52.i.i575.i.i ], [ %.sroa.36.768.copyload.i.i570.i.i, %.lr.ph.i546.i.i ]
  %.sroa.32.1.i.i579.i.i = phi <16 x float> [ %i.axq, %.preheader52.i.i575.i.i ], [ %.sroa.32.768.copyload.i.i568.i.i, %.lr.ph.i546.i.i ]
  %.sroa.30.1.i.i580.i.i = phi <16 x float> [ %i.axm, %.preheader52.i.i575.i.i ], [ %.sroa.30.512.copyload.i.i567.i.i, %.lr.ph.i546.i.i ]
  %.sroa.28.1.i.i581.i.i = phi <16 x float> [ %i.axl, %.preheader52.i.i575.i.i ], [ %.sroa.28.512.copyload.i.i565.i.i, %.lr.ph.i546.i.i ]
  %.sroa.26.1.i.i582.i.i = phi <16 x float> [ %i.axk, %.preheader52.i.i575.i.i ], [ %.sroa.26.512.copyload.i.i563.i.i, %.lr.ph.i546.i.i ]
  %.sroa.22.1.i.i583.i.i = phi <16 x float> [ %i.axj, %.preheader52.i.i575.i.i ], [ %.sroa.22.512.copyload.i.i561.i.i, %.lr.ph.i546.i.i ]
  %.sroa.20.1.i.i584.i.i = phi <16 x float> [ %i.axf, %.preheader52.i.i575.i.i ], [ %.sroa.20.256.copyload.i.i560.i.i, %.lr.ph.i546.i.i ]
  %.sroa.18.1.i.i585.i.i = phi <16 x float> [ %i.axe, %.preheader52.i.i575.i.i ], [ %.sroa.18.256.copyload.i.i558.i.i, %.lr.ph.i546.i.i ]
  %.sroa.16.1.i.i586.i.i = phi <16 x float> [ %i.axd, %.preheader52.i.i575.i.i ], [ %.sroa.16.256.copyload.i.i556.i.i, %.lr.ph.i546.i.i ]
  %.sroa.12.1.i.i587.i.i = phi <16 x float> [ %i.axc, %.preheader52.i.i575.i.i ], [ %.sroa.12.256.copyload.i.i554.i.i, %.lr.ph.i546.i.i ]
  %.sroa.10.1.i.i588.i.i = phi <16 x float> [ %i.awy, %.preheader52.i.i575.i.i ], [ %.sroa.10.0.copyload.i.i553.i.i, %.lr.ph.i546.i.i ]
  %.sroa.8.1.i.i589.i.i = phi <16 x float> [ %i.awx, %.preheader52.i.i575.i.i ], [ %.sroa.8.0.copyload.i.i551.i.i, %.lr.ph.i546.i.i ]
  %.sroa.6.1.i.i590.i.i = phi <16 x float> [ %i.aww, %.preheader52.i.i575.i.i ], [ %.sroa.6.0.copyload.i.i549.i.i, %.lr.ph.i546.i.i ]
  %.sroa.080.1.i.i591.i.i = phi <16 x float> [ %i.awv, %.preheader52.i.i575.i.i ], [ %.sroa.080.0.copyload.i.i547.i.i, %.lr.ph.i546.i.i ]
  %.04760.i.i592.i.i = phi i64 [ %i.axu, %.preheader52.i.i575.i.i ], [ 0, %.lr.ph.i546.i.i ] ; 3 uses
  %i.awq = mul nuw nsw i64 %.04760.i.i592.i.i, %i.tf
  %i.awr = getelementptr inbounds nuw [4 x i8], ptr %i.awm, i64 %i.awq ; 4 uses
  %.sroa.0.0.copyload.i.i593.i.i = load <16 x float>, ptr %i.awr, align 1, !tbaa !56, !alias.scope !1492 ; 4 uses
  %.sroa.7.0..sroa_idx.i.i594.i.i = getelementptr inbounds nuw i8, ptr %i.awr, i64 64
  %.sroa.7.0.copyload.i.i595.i.i = load <16 x float>, ptr %.sroa.7.0..sroa_idx.i.i594.i.i, align 1, !tbaa !56, !alias.scope !1492 ; 4 uses
  %.sroa.11.0..sroa_idx.i.i596.i.i = getelementptr inbounds nuw i8, ptr %i.awr, i64 128
  %.sroa.11.0.copyload.i.i597.i.i = load <16 x float>, ptr %.sroa.11.0..sroa_idx.i.i596.i.i, align 1, !tbaa !56, !alias.scope !1492 ; 4 uses
  %.sroa.15.0..sroa_idx.i.i598.i.i = getelementptr inbounds nuw i8, ptr %i.awr, i64 192
  %.sroa.15.0.copyload.i.i599.i.i = load <16 x float>, ptr %.sroa.15.0..sroa_idx.i.i598.i.i, align 1, !tbaa !56, !alias.scope !1492 ; 4 uses
  %invariant.gep.i.i600.i.i = getelementptr [4 x i8], ptr %.0109199.i545.i.i, i64 %.04760.i.i592.i.i ; 4 uses
  %i.aws = load float, ptr %invariant.gep.i.i600.i.i, align 4, !tbaa !43, !alias.scope !1493
  %i.awt = insertelement <16 x float> poison, float %i.aws, i64 0
  %i.awu = shufflevector <16 x float> %i.awt, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.awv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.0.0.copyload.i.i593.i.i, <16 x float> %i.awu, <16 x float> %.sroa.080.1.i.i591.i.i) ; 2 uses
  %i.aww = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.7.0.copyload.i.i595.i.i, <16 x float> %i.awu, <16 x float> %.sroa.6.1.i.i590.i.i) ; 2 uses
  %i.awx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.11.0.copyload.i.i597.i.i, <16 x float> %i.awu, <16 x float> %.sroa.8.1.i.i589.i.i) ; 2 uses
  %i.awy = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.15.0.copyload.i.i599.i.i, <16 x float> %i.awu, <16 x float> %.sroa.10.1.i.i588.i.i) ; 2 uses
  %gep.1.i.i601.i.i = getelementptr i8, ptr %invariant.gep.i.i600.i.i, i64 256
  %i.awz = load float, ptr %gep.1.i.i601.i.i, align 4, !tbaa !43, !alias.scope !1493
  %i.axa = insertelement <16 x float> poison, float %i.awz, i64 0
  %i.axb = shufflevector <16 x float> %i.axa, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.axc = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.0.0.copyload.i.i593.i.i, <16 x float> %i.axb, <16 x float> %.sroa.12.1.i.i587.i.i) ; 2 uses
  %i.axd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.7.0.copyload.i.i595.i.i, <16 x float> %i.axb, <16 x float> %.sroa.16.1.i.i586.i.i) ; 2 uses
  %i.axe = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.11.0.copyload.i.i597.i.i, <16 x float> %i.axb, <16 x float> %.sroa.18.1.i.i585.i.i) ; 2 uses
  %i.axf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.15.0.copyload.i.i599.i.i, <16 x float> %i.axb, <16 x float> %.sroa.20.1.i.i584.i.i) ; 2 uses
  %gep.2.i.i602.i.i = getelementptr i8, ptr %invariant.gep.i.i600.i.i, i64 512
  %i.axg = load float, ptr %gep.2.i.i602.i.i, align 4, !tbaa !43, !alias.scope !1493
  %i.axh = insertelement <16 x float> poison, float %i.axg, i64 0
  %i.axi = shufflevector <16 x float> %i.axh, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.axj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.0.0.copyload.i.i593.i.i, <16 x float> %i.axi, <16 x float> %.sroa.22.1.i.i583.i.i) ; 2 uses
  %i.axk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.7.0.copyload.i.i595.i.i, <16 x float> %i.axi, <16 x float> %.sroa.26.1.i.i582.i.i) ; 2 uses
  %i.axl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.11.0.copyload.i.i597.i.i, <16 x float> %i.axi, <16 x float> %.sroa.28.1.i.i581.i.i) ; 2 uses
  %i.axm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.15.0.copyload.i.i599.i.i, <16 x float> %i.axi, <16 x float> %.sroa.30.1.i.i580.i.i) ; 2 uses
  %gep.3.i.i603.i.i = getelementptr i8, ptr %invariant.gep.i.i600.i.i, i64 768
  %i.axn = load float, ptr %gep.3.i.i603.i.i, align 4, !tbaa !43, !alias.scope !1493
  %i.axo = insertelement <16 x float> poison, float %i.axn, i64 0
  %i.axp = shufflevector <16 x float> %i.axo, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.axq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %.sroa.0.0.copyload.i.i593.i.i, <16 x float> %i.axp, <16 x float> %.sroa.32.1.i.i579.i.i) ; 2 uses
end_hunk_1

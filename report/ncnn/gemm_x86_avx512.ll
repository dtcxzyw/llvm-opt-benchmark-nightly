Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx512?download=true
inline.NumInlined: 238
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 212
loop-unroll.NumUnrolled: 216
begin_hunk_0_@_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iiii:bb.a
.lr.ph235.prol:                                   ; preds = %.lr.ph235.preheader, %.lr.ph235.prol
  %.8234.prol = phi ptr [ %i.hx, %.lr.ph235.prol ], [ %.7.lcssa, %.lr.ph235.preheader ] ; 2 uses
  %.1162233.prol = phi i32 [ %i.hz, %.lr.ph235.prol ], [ %.0161.lcssa, %.lr.ph235.preheader ]
  %.1164232.prol = phi ptr [ %i.hy, %.lr.ph235.prol ], [ %.0163.lcssa, %.lr.ph235.preheader ] ; 2 uses
  %prol.iter516 = phi i32 [ %prol.iter516.next, %.lr.ph235.prol ], [ 0, %.lr.ph235.preheader ]
  %i.hs = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.1164232.prol, <4 x i32> %i.hj, <4 x i32> splat (i32 -1), i8 1)
  %i.ht = shufflevector <4 x i32> %i.hs, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hu = trunc <16 x i32> %i.ht to <16 x i8>
  %i.hv = bitcast <16 x i8> %i.hu to <4 x float>
  %i.hw = extractelement <4 x float> %i.hv, i64 0
  store float %i.hw, ptr %.8234.prol, align 1, !tbaa !90
  %i.hx = getelementptr inbounds nuw i8, ptr %.8234.prol, i64 4 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.1164232.prol, i64 1 ; 2 uses
  %i.hz = add nuw nsw i32 %.1162233.prol, 1       ; 2 uses
  %prol.iter516.next = add i32 %prol.iter516, 1   ; 2 uses
  %prol.iter516.cmp.not = icmp eq i32 %prol.iter516.next, %xtraiter514
  br i1 %prol.iter516.cmp.not, label %.lr.ph235.prol.loopexit, label %.lr.ph235.prol, !llvm.loop !700

.lr.ph235.prol.loopexit:                          ; preds = %.lr.ph235.prol, %.lr.ph235.preheader
  %.lcssa483.unr = phi ptr [ poison, %.lr.ph235.preheader ], [ %i.hx, %.lr.ph235.prol ]
  %.8234.unr = phi ptr [ %.7.lcssa, %.lr.ph235.preheader ], [ %i.hx, %.lr.ph235.prol ]
  %.1162233.unr = phi i32 [ %.0161.lcssa, %.lr.ph235.preheader ], [ %i.hz, %.lr.ph235.prol ]
  %.1164232.unr = phi ptr [ %.0163.lcssa, %.lr.ph235.preheader ], [ %i.hy, %.lr.ph235.prol ]
  %i.ia = sub i32 %.0161.lcssa, %5
  %i.ib = icmp ugt i32 %i.ia, -4
  br i1 %i.ib, label %._crit_edge236, label %.lr.ph235

.lr.ph228:                                        ; preds = %.lr.ph228.preheader, %.lr.ph228
  %.7226 = phi ptr [ %i.iy, %.lr.ph228 ], [ %.6239, %.lr.ph228.preheader ] ; 5 uses
  %.0163224 = phi ptr [ %i.iz, %.lr.ph228 ], [ %i.hg, %.lr.ph228.preheader ] ; 5 uses
  %niter513 = phi i32 [ %niter513.next.3, %.lr.ph228 ], [ 0, %.lr.ph228.preheader ]
  %i.ic = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.0163224, <4 x i32> %i.hj, <4 x i32> splat (i32 -1), i8 1)
  %i.id = trunc <4 x i32> %i.ic to <4 x i16>
  %i.ie = bitcast <4 x i16> %i.id to <1 x i64>
  %i.if = extractelement <1 x i64> %i.ie, i64 0
  store i64 %i.if, ptr %.7226, align 1, !tbaa !90
  %i.ig = getelementptr inbounds nuw i8, ptr %.7226, i64 8
  %i.ih = getelementptr inbounds nuw i8, ptr %.0163224, i64 2
  %i.ii = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.ih, <4 x i32> %i.hj, <4 x i32> splat (i32 -1), i8 1)
  %i.ij = trunc <4 x i32> %i.ii to <4 x i16>
  %i.ik = bitcast <4 x i16> %i.ij to <1 x i64>
  %i.il = extractelement <1 x i64> %i.ik, i64 0
  store i64 %i.il, ptr %i.ig, align 1, !tbaa !90
  %i.im = getelementptr inbounds nuw i8, ptr %.7226, i64 16
  %i.in = getelementptr inbounds nuw i8, ptr %.0163224, i64 4
  %i.io = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.in, <4 x i32> %i.hj, <4 x i32> splat (i32 -1), i8 1)
  %i.ip = trunc <4 x i32> %i.io to <4 x i16>
  %i.iq = bitcast <4 x i16> %i.ip to <1 x i64>
  %i.ir = extractelement <1 x i64> %i.iq, i64 0
  store i64 %i.ir, ptr %i.im, align 1, !tbaa !90
  %i.is = getelementptr inbounds nuw i8, ptr %.7226, i64 24
  %i.it = getelementptr inbounds nuw i8, ptr %.0163224, i64 6
  %i.iu = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.it, <4 x i32> %i.hj, <4 x i32> splat (i32 -1), i8 1)
  %i.iv = trunc <4 x i32> %i.iu to <4 x i16>
  %i.iw = bitcast <4 x i16> %i.iv to <1 x i64>
  %i.ix = extractelement <1 x i64> %i.iw, i64 0
  store i64 %i.ix, ptr %i.is, align 1, !tbaa !90
  %i.iy = getelementptr inbounds nuw i8, ptr %.7226, i64 32 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.0163224, i64 8 ; 3 uses
  %niter513.next.3 = add i32 %niter513, 4         ; 2 uses
  %niter513.ncmp.3.not = icmp eq i32 %niter513.next.3, %unroll_iter512
  br i1 %niter513.ncmp.3.not, label %.preheader184.loopexit.unr-lcssa, label %.lr.ph228, !llvm.loop !701

.lr.ph235:                                        ; preds = %.lr.ph235.prol.loopexit, %.lr.ph235
  %.8234 = phi ptr [ %i.ka, %.lr.ph235 ], [ %.8234.unr, %.lr.ph235.prol.loopexit ] ; 5 uses
  %.1162233 = phi i32 [ %i.kc, %.lr.ph235 ], [ %.1162233.unr, %.lr.ph235.prol.loopexit ]
  %.1164232 = phi ptr [ %i.kb, %.lr.ph235 ], [ %.1164232.unr, %.lr.ph235.prol.loopexit ] ; 5 uses
  %i.ja = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.1164232, <4 x i32> %i.hj, <4 x i32> splat (i32 -1), i8 1)
  %i.jb = shufflevector <4 x i32> %i.ja, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jc = trunc <16 x i32> %i.jb to <16 x i8>
  %i.jd = bitcast <16 x i8> %i.jc to <4 x float>
  %i.je = extractelement <4 x float> %i.jd, i64 0
  store float %i.je, ptr %.8234, align 1, !tbaa !90
  %i.jf = getelementptr inbounds nuw i8, ptr %.8234, i64 4
  %i.jg = getelementptr inbounds nuw i8, ptr %.1164232, i64 1
  %i.jh = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.jg, <4 x i32> %i.hj, <4 x i32> splat (i32 -1), i8 1)
  %i.ji = shufflevector <4 x i32> %i.jh, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jj = trunc <16 x i32> %i.ji to <16 x i8>
  %i.jk = bitcast <16 x i8> %i.jj to <4 x float>
  %i.jl = extractelement <4 x float> %i.jk, i64 0
  store float %i.jl, ptr %i.jf, align 1, !tbaa !90
  %i.jm = getelementptr inbounds nuw i8, ptr %.8234, i64 8
  %i.jn = getelementptr inbounds nuw i8, ptr %.1164232, i64 2
  %i.jo = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.jn, <4 x i32> %i.hj, <4 x i32> splat (i32 -1), i8 1)
  %i.jp = shufflevector <4 x i32> %i.jo, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jq = trunc <16 x i32> %i.jp to <16 x i8>
  %i.jr = bitcast <16 x i8> %i.jq to <4 x float>
  %i.js = extractelement <4 x float> %i.jr, i64 0
  store float %i.js, ptr %i.jm, align 1, !tbaa !90
  %i.jt = getelementptr inbounds nuw i8, ptr %.8234, i64 12
  %i.ju = getelementptr inbounds nuw i8, ptr %.1164232, i64 3
  %i.jv = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.ju, <4 x i32> %i.hj, <4 x i32> splat (i32 -1), i8 1)
  %i.jw = shufflevector <4 x i32> %i.jv, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jx = trunc <16 x i32> %i.jw to <16 x i8>
  %i.jy = bitcast <16 x i8> %i.jx to <4 x float>
  %i.jz = extractelement <4 x float> %i.jy, i64 0
  store float %i.jz, ptr %i.jt, align 1, !tbaa !90
  %i.ka = getelementptr inbounds nuw i8, ptr %.8234, i64 16 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.1164232, i64 4
  %i.kc = add nuw nsw i32 %.1162233, 4            ; 2 uses
  %exitcond301.not.3 = icmp eq i32 %i.kc, %5
  br i1 %exitcond301.not.3, label %._crit_edge236, label %.lr.ph235, !llvm.loop !702

._crit_edge236:                                   ; preds = %.lr.ph235.prol.loopexit, %.lr.ph235, %.preheader184
  %.8.lcssa = phi ptr [ %.7.lcssa, %.preheader184 ], [ %.lcssa483.unr, %.lr.ph235.prol.loopexit ], [ %i.ka, %.lr.ph235 ] ; 2 uses
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 4 ; 3 uses
  %i.kd = icmp slt i64 %indvars.iv.next303, %invariant.op332
  br i1 %i.kd, label %bb.j, label %.preheader183.loopexit, !llvm.loop !703

.preheader.loopexit:                              ; preds = %._crit_edge258
  %i.ke = trunc nsw i64 %indvars.iv.next307 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader183
  %.3159.lcssa = phi i32 [ %.2158.lcssa, %.preheader183 ], [ %i.ke, %.preheader.loopexit ] ; 2 uses
  %.9.lcssa = phi ptr [ %.6.lcssa, %.preheader183 ], [ %.11.lcssa, %.preheader.loopexit ]
  %i.kf = icmp slt i32 %.3159.lcssa, %3
  br i1 %i.kf, label %.lr.ph274, label %.loopexit

.lr.ph274:                                        ; preds = %.preheader
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ki = sext i32 %4 to i64                      ; 2 uses
  %i.kj = icmp sgt i32 %5, 0
  br i1 %i.kj, label %.lr.ph269.preheader, label %.loopexit

.lr.ph269.preheader:                              ; preds = %.lr.ph274
  %i.kk = sext i32 %.3159.lcssa to i64
  %i.kl = sext i32 %2 to i64
  %wide.trip.count = sext i32 %3 to i64
  %i.km = zext nneg i32 %5 to i64                 ; 5 uses
  %min.iters.check441 = icmp ult i32 %5, 16
  %min.iters.check444 = icmp ult i32 %5, 256
  %i.kn = and i64 %i.km, 240
  %n.vec446 = and i64 %i.km, 2147483392           ; 6 uses
  %i.ko = trunc nuw nsw i64 %n.vec446 to i32
  %cmp.n457 = icmp eq i64 %n.vec446, %i.km
  %min.epilog.iters.check461 = icmp eq i64 %i.kn, 0
  %n.vec464 = and i64 %i.km, 2147483632           ; 5 uses
  %i.kp = trunc nuw nsw i64 %n.vec464 to i32
  %cmp.n472 = icmp eq i64 %n.vec464, %i.km
  br label %iter.check458

bb.k:                                             ; preds = %.lr.ph262, %._crit_edge258
  %indvars.iv306 = phi i64 [ %i.gg, %.lr.ph262 ], [ %indvars.iv.next307, %._crit_edge258 ] ; 2 uses
  %.9261 = phi ptr [ %.6.lcssa, %.lr.ph262 ], [ %.11.lcssa, %._crit_edge258 ] ; 10 uses
  %i.kq = add i64 %indvars.iv306, %i.gi           ; 2 uses
  %i.kr = load ptr, ptr %0, align 8, !tbaa !25    ; 4 uses
  %i.ks = load i32, ptr %i.gb, align 4, !tbaa !78
  %i.kt = sext i32 %i.ks to i64
  %i.ku = load i64, ptr %i.gc, align 8, !tbaa !64
  %i.kv = mul i64 %i.ku, %i.kt                    ; 2 uses
  %i.kw = mul i64 %i.kv, %i.kq                    ; 2 uses
  %i.kx = getelementptr i8, ptr %i.kr, i64 %i.kw
  %i.ky = getelementptr i8, ptr %i.kx, i64 %i.gd  ; 8 uses
  %i.kz = add nsw i64 %i.kq, 1
  %i.la = mul i64 %i.kv, %i.kz                    ; 2 uses
  %i.lb = getelementptr i8, ptr %i.kr, i64 %i.la
  %i.lc = getelementptr i8, ptr %i.lb, i64 %i.gd  ; 8 uses
  br i1 %i.ge, label %iter.check412, label %.preheader182

iter.check412:                                    ; preds = %bb.k
  br i1 %min.iters.check386, label %.lr.ph248.preheader, label %vector.memcheck387

vector.memcheck387:                               ; preds = %iter.check412
  %i.ld = getelementptr i8, ptr %.9261, i64 %i.gn
  %i.le = getelementptr i8, ptr %i.ld, i64 4      ; 2 uses
  %i.lf = getelementptr i8, ptr %i.kr, i64 %i.la
  %i.lg = getelementptr i8, ptr %i.lf, i64 %i.gl
  %i.lh = getelementptr i8, ptr %i.lg, i64 %i.gd
  %i.li = getelementptr i8, ptr %i.lh, i64 2
  %i.lj = getelementptr i8, ptr %i.kr, i64 %i.kw
  %i.lk = getelementptr i8, ptr %i.lj, i64 %i.gl
  %i.ll = getelementptr i8, ptr %i.lk, i64 %i.gd
  %i.lm = getelementptr i8, ptr %i.ll, i64 2
  %bound0388 = icmp ult ptr %.9261, %i.li
  %bound1389 = icmp ult ptr %i.lc, %i.le
  %found.conflict390 = and i1 %bound0388, %bound1389
  %bound0391 = icmp ult ptr %.9261, %i.lm
  %bound1392 = icmp ult ptr %i.ky, %i.le
  %found.conflict393 = and i1 %bound0391, %bound1392
  %conflict.rdx394 = or i1 %found.conflict390, %found.conflict393
  br i1 %conflict.rdx394, label %.lr.ph248.preheader, label %vector.main.loop.iter.check395

vector.main.loop.iter.check395:                   ; preds = %vector.memcheck387
  br i1 %min.iters.check396, label %vec.epilog.ph416, label %vector.ph397

vector.ph397:                                     ; preds = %vector.main.loop.iter.check395
  %i.ln = getelementptr i8, ptr %i.lc, i64 %i.gs  ; 2 uses
  %i.lo = getelementptr i8, ptr %i.ky, i64 %i.gs  ; 2 uses
  %i.lp = getelementptr i8, ptr %.9261, i64 %i.gt ; 2 uses
  br label %vector.body399

vector.body399:                                   ; preds = %vector.ph397, %vector.body399
  %index400 = phi i64 [ 0, %vector.ph397 ], [ %index.next409, %vector.body399 ] ; 3 uses
  %i.lq = shl i64 %index400, 1                    ; 2 uses
  %next.gep401 = getelementptr i8, ptr %i.lc, i64 %i.lq
  %next.gep402 = getelementptr i8, ptr %i.ky, i64 %i.lq
  %i.lr = shl i64 %index400, 2
  %next.gep403 = getelementptr i8, ptr %.9261, i64 %i.lr
  %wide.vec = load <64 x i8>, ptr %next.gep402, align 1, !tbaa !90, !alias.scope !725
  %wide.vec405 = load <64 x i8>, ptr %next.gep401, align 1, !tbaa !90, !alias.scope !726
  %interleaved.vec408 = shufflevector <64 x i8> %wide.vec, <64 x i8> %wide.vec405, <128 x i32> <i32 0, i32 1, i32 64, i32 65, i32 2, i32 3, i32 66, i32 67, i32 4, i32 5, i32 68, i32 69, i32 6, i32 7, i32 70, i32 71, i32 8, i32 9, i32 72, i32 73, i32 10, i32 11, i32 74, i32 75, i32 12, i32 13, i32 76, i32 77, i32 14, i32 15, i32 78, i32 79, i32 16, i32 17, i32 80, i32 81, i32 18, i32 19, i32 82, i32 83, i32 20, i32 21, i32 84, i32 85, i32 22, i32 23, i32 86, i32 87, i32 24, i32 25, i32 88, i32 89, i32 26, i32 27, i32 90, i32 91, i32 28, i32 29, i32 92, i32 93, i32 30, i32 31, i32 94, i32 95, i32 32, i32 33, i32 96, i32 97, i32 34, i32 35, i32 98, i32 99, i32 36, i32 37, i32 100, i32 101, i32 38, i32 39, i32 102, i32 103, i32 40, i32 41, i32 104, i32 105, i32 42, i32 43, i32 106, i32 107, i32 44, i32 45, i32 108, i32 109, i32 46, i32 47, i32 110, i32 111, i32 48, i32 49, i32 112, i32 113, i32 50, i32 51, i32 114, i32 115, i32 52, i32 53, i32 116, i32 117, i32 54, i32 55, i32 118, i32 119, i32 56, i32 57, i32 120, i32 121, i32 58, i32 59, i32 122, i32 123, i32 60, i32 61, i32 124, i32 125, i32 62, i32 63, i32 126, i32 127>
  store <128 x i8> %interleaved.vec408, ptr %next.gep403, align 1, !tbaa !90, !alias.scope !727, !noalias !728
  %index.next409 = add nuw i64 %index400, 32      ; 2 uses
  %i.ls = icmp eq i64 %index.next409, %n.vec398
  br i1 %i.ls, label %middle.block410, label %vector.body399, !llvm.loop !708

middle.block410:                                  ; preds = %vector.body399
  br i1 %cmp.n411, label %.preheader182, label %vec.epilog.iter.check413

vec.epilog.iter.check413:                         ; preds = %middle.block410
  br i1 %min.epilog.iters.check415, label %.lr.ph248.preheader, label %vec.epilog.ph416, !prof !104

vec.epilog.ph416:                                 ; preds = %vector.main.loop.iter.check395, %vec.epilog.iter.check413
  %vec.epilog.resume.val417 = phi i64 [ %n.vec398, %vec.epilog.iter.check413 ], [ 0, %vector.main.loop.iter.check395 ]
  %i.lt = getelementptr i8, ptr %i.lc, i64 %i.gw  ; 2 uses
  %i.lu = getelementptr i8, ptr %i.ky, i64 %i.gw  ; 2 uses
  %i.lv = getelementptr i8, ptr %.9261, i64 %i.gx ; 2 uses
  br label %vec.epilog.vector.body419

vec.epilog.vector.body419:                        ; preds = %vec.epilog.vector.body419, %vec.epilog.ph416
  %index420 = phi i64 [ %vec.epilog.resume.val417, %vec.epilog.ph416 ], [ %index.next431, %vec.epilog.vector.body419 ] ; 3 uses
  %i.lw = shl i64 %index420, 1                    ; 2 uses
  %next.gep421 = getelementptr i8, ptr %i.lc, i64 %i.lw
  %next.gep422 = getelementptr i8, ptr %i.ky, i64 %i.lw
  %i.lx = shl i64 %index420, 2
  %next.gep423 = getelementptr i8, ptr %.9261, i64 %i.lx
  %wide.vec424 = load <16 x i8>, ptr %next.gep422, align 1, !tbaa !90, !alias.scope !725
  %wide.vec427 = load <16 x i8>, ptr %next.gep421, align 1, !tbaa !90, !alias.scope !726
  %interleaved.vec430 = shufflevector <16 x i8> %wide.vec424, <16 x i8> %wide.vec427, <32 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23, i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  store <32 x i8> %interleaved.vec430, ptr %next.gep423, align 1, !tbaa !90, !alias.scope !727, !noalias !728
  %index.next431 = add nuw i64 %index420, 8       ; 2 uses
  %i.ly = icmp eq i64 %index.next431, %n.vec418
  br i1 %i.ly, label %vec.epilog.middle.block432, label %vec.epilog.vector.body419, !llvm.loop !709

vec.epilog.middle.block432:                       ; preds = %vec.epilog.vector.body419
  br i1 %cmp.n433, label %.preheader182, label %.lr.ph248.preheader

.lr.ph248.preheader:                              ; preds = %iter.check412, %vector.memcheck387, %vec.epilog.iter.check413, %vec.epilog.middle.block432
  %.0149246.ph = phi i32 [ 0, %iter.check412 ], [ 0, %vector.memcheck387 ], [ %i.gr, %vec.epilog.iter.check413 ], [ %i.gv, %vec.epilog.middle.block432 ]
  %.0150245.ph = phi ptr [ %i.lc, %iter.check412 ], [ %i.lc, %vector.memcheck387 ], [ %i.ln, %vec.epilog.iter.check413 ], [ %i.lt, %vec.epilog.middle.block432 ]
  %.0152244.ph = phi ptr [ %i.ky, %iter.check412 ], [ %i.ky, %vector.memcheck387 ], [ %i.lo, %vec.epilog.iter.check413 ], [ %i.lu, %vec.epilog.middle.block432 ]
  %.10243.ph = phi ptr [ %.9261, %iter.check412 ], [ %.9261, %vector.memcheck387 ], [ %i.lp, %vec.epilog.iter.check413 ], [ %i.lv, %vec.epilog.middle.block432 ]
  br label %.lr.ph248

.preheader182:                                    ; preds = %.lr.ph248, %middle.block410, %vec.epilog.middle.block432, %bb.k
  %.10.lcssa = phi ptr [ %.9261, %bb.k ], [ %i.lv, %vec.epilog.middle.block432 ], [ %i.lp, %middle.block410 ], [ %i.nx, %.lr.ph248 ] ; 10 uses
  %.0152.lcssa = phi ptr [ %i.ky, %bb.k ], [ %i.lu, %vec.epilog.middle.block432 ], [ %i.lo, %middle.block410 ], [ %i.ny, %.lr.ph248 ] ; 8 uses
  %.0150.lcssa = phi ptr [ %i.lc, %bb.k ], [ %i.lt, %vec.epilog.middle.block432 ], [ %i.ln, %middle.block410 ], [ %i.nz, %.lr.ph248 ] ; 8 uses
  %.0149.lcssa = phi i32 [ 0, %bb.k ], [ %i.gf, %vec.epilog.middle.block432 ], [ %i.gf, %middle.block410 ], [ %i.gf, %.lr.ph248 ] ; 7 uses
  %i.lz = icmp slt i32 %.0149.lcssa, %5
  br i1 %i.lz, label %iter.check, label %._crit_edge258

iter.check:                                       ; preds = %.preheader182
  %i.ma = xor i32 %.0149.lcssa, -1
  %i.mb = add i32 %5, %i.ma                       ; 3 uses
  %i.mc = zext i32 %i.mb to i64
  %i.md = add nuw nsw i64 %i.mc, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.mb, 7
  br i1 %min.iters.check, label %.lr.ph257.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.me = xor i32 %.0149.lcssa, -1
  %i.mf = add i32 %5, %i.me
  %i.mg = zext i32 %i.mf to i64                   ; 2 uses
  %i.mh = shl nuw nsw i64 %i.mg, 1
  %i.mi = getelementptr i8, ptr %.10.lcssa, i64 %i.mh
  %i.mj = getelementptr i8, ptr %i.mi, i64 2      ; 2 uses
  %i.mk = add nuw nsw i64 %i.mg, 1                ; 2 uses
  %i.ml = getelementptr i8, ptr %.0150.lcssa, i64 %i.mk
  %i.mm = getelementptr i8, ptr %.0152.lcssa, i64 %i.mk
  %bound0 = icmp ult ptr %.10.lcssa, %i.ml
  %bound1 = icmp ult ptr %.0150.lcssa, %i.mj
  %found.conflict = and i1 %bound0, %bound1
  %bound0355 = icmp ult ptr %.10.lcssa, %i.mm
  %bound1356 = icmp ult ptr %.0152.lcssa, %i.mj
  %found.conflict357 = and i1 %bound0355, %bound1356
  %conflict.rdx = or i1 %found.conflict, %found.conflict357
  br i1 %conflict.rdx, label %.lr.ph257.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check358 = icmp ult i32 %i.mb, 63
  br i1 %min.iters.check358, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.mn = and i64 %i.md, 56
  %n.vec = and i64 %i.md, 8589934528              ; 7 uses
  %i.mo = trunc i64 %n.vec to i32
  %i.mp = add i32 %.0149.lcssa, %i.mo
  %i.mq = getelementptr i8, ptr %.0150.lcssa, i64 %n.vec
  %i.mr = getelementptr i8, ptr %.0152.lcssa, i64 %n.vec
  %i.ms = shl nuw nsw i64 %n.vec, 1
  %i.mt = getelementptr i8, ptr %.10.lcssa, i64 %i.ms ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %next.gep = getelementptr i8, ptr %.0150.lcssa, i64 %index
  %next.gep359 = getelementptr i8, ptr %.0152.lcssa, i64 %index
  %i.mu = shl i64 %index, 1
  %next.gep360 = getelementptr i8, ptr %.10.lcssa, i64 %i.mu
  %wide.load = load <64 x i8>, ptr %next.gep359, align 1, !tbaa !90, !alias.scope !729
  %wide.load361 = load <64 x i8>, ptr %next.gep, align 1, !tbaa !90, !alias.scope !730
  %interleaved.vec = shufflevector <64 x i8> %wide.load, <64 x i8> %wide.load361, <128 x i32> <i32 0, i32 64, i32 1, i32 65, i32 2, i32 66, i32 3, i32 67, i32 4, i32 68, i32 5, i32 69, i32 6, i32 70, i32 7, i32 71, i32 8, i32 72, i32 9, i32 73, i32 10, i32 74, i32 11, i32 75, i32 12, i32 76, i32 13, i32 77, i32 14, i32 78, i32 15, i32 79, i32 16, i32 80, i32 17, i32 81, i32 18, i32 82, i32 19, i32 83, i32 20, i32 84, i32 21, i32 85, i32 22, i32 86, i32 23, i32 87, i32 24, i32 88, i32 25, i32 89, i32 26, i32 90, i32 27, i32 91, i32 28, i32 92, i32 29, i32 93, i32 30, i32 94, i32 31, i32 95, i32 32, i32 96, i32 33, i32 97, i32 34, i32 98, i32 35, i32 99, i32 36, i32 100, i32 37, i32 101, i32 38, i32 102, i32 39, i32 103, i32 40, i32 104, i32 41, i32 105, i32 42, i32 106, i32 43, i32 107, i32 44, i32 108, i32 45, i32 109, i32 46, i32 110, i32 47, i32 111, i32 48, i32 112, i32 49, i32 113, i32 50, i32 114, i32 51, i32 115, i32 52, i32 116, i32 53, i32 117, i32 54, i32 118, i32 55, i32 119, i32 56, i32 120, i32 57, i32 121, i32 58, i32 122, i32 59, i32 123, i32 60, i32 124, i32 61, i32 125, i32 62, i32 126, i32 63, i32 127>
  store <128 x i8> %interleaved.vec, ptr %next.gep360, align 1, !tbaa !90, !alias.scope !731, !noalias !732
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.mv = icmp eq i64 %index.next, %n.vec
  br i1 %i.mv, label %middle.block, label %vector.body, !llvm.loop !714

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.md, %n.vec
  br i1 %cmp.n, label %._crit_edge258, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.mn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph257.preheader, label %vec.epilog.ph, !prof !73

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec362 = and i64 %i.md, 8589934584           ; 6 uses
  %i.mw = trunc i64 %n.vec362 to i32
  %i.mx = add i32 %.0149.lcssa, %i.mw
  %i.my = getelementptr i8, ptr %.0150.lcssa, i64 %n.vec362
  %i.mz = getelementptr i8, ptr %.0152.lcssa, i64 %n.vec362
  %i.na = shl nuw nsw i64 %n.vec362, 1
  %i.nb = getelementptr i8, ptr %.10.lcssa, i64 %i.na ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index363 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next370, %vec.epilog.vector.body ] ; 4 uses
  %next.gep364 = getelementptr i8, ptr %.0150.lcssa, i64 %index363
  %next.gep365 = getelementptr i8, ptr %.0152.lcssa, i64 %index363
  %i.nc = shl i64 %index363, 1
  %next.gep366 = getelementptr i8, ptr %.10.lcssa, i64 %i.nc
  %wide.load367 = load <8 x i8>, ptr %next.gep365, align 1, !tbaa !90, !alias.scope !729
  %wide.load368 = load <8 x i8>, ptr %next.gep364, align 1, !tbaa !90, !alias.scope !730
  %interleaved.vec369 = shufflevector <8 x i8> %wide.load367, <8 x i8> %wide.load368, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec369, ptr %next.gep366, align 1, !tbaa !90, !alias.scope !731, !noalias !732
  %index.next370 = add nuw i64 %index363, 8       ; 2 uses
  %i.nd = icmp eq i64 %index.next370, %n.vec362
  br i1 %i.nd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !715

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n371 = icmp eq i64 %i.md, %n.vec362
  br i1 %cmp.n371, label %._crit_edge258, label %.lr.ph257.preheader

.lr.ph257.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1256.ph = phi i32 [ %.0149.lcssa, %iter.check ], [ %.0149.lcssa, %vector.memcheck ], [ %i.mp, %vec.epilog.iter.check ], [ %i.mx, %vec.epilog.middle.block ] ; 4 uses
  %.1151255.ph = phi ptr [ %.0150.lcssa, %iter.check ], [ %.0150.lcssa, %vector.memcheck ], [ %i.mq, %vec.epilog.iter.check ], [ %i.my, %vec.epilog.middle.block ] ; 2 uses
  %.1153254.ph = phi ptr [ %.0152.lcssa, %iter.check ], [ %.0152.lcssa, %vector.memcheck ], [ %i.mr, %vec.epilog.iter.check ], [ %i.mz, %vec.epilog.middle.block ] ; 2 uses
  %.11253.ph = phi ptr [ %.10.lcssa, %iter.check ], [ %.10.lcssa, %vector.memcheck ], [ %i.mt, %vec.epilog.iter.check ], [ %i.nb, %vec.epilog.middle.block ] ; 2 uses
  %i.ne = sub i32 %5, %.1256.ph
  %xtraiter517 = and i32 %i.ne, 3                 ; 2 uses
  %lcmp.mod518.not = icmp eq i32 %xtraiter517, 0
  br i1 %lcmp.mod518.not, label %.lr.ph257.prol.loopexit, label %.lr.ph257.prol

.lr.ph257.prol:                                   ; preds = %.lr.ph257.preheader, %.lr.ph257.prol
  %.1256.prol = phi i32 [ %i.nl, %.lr.ph257.prol ], [ %.1256.ph, %.lr.ph257.preheader ]
  %.1151255.prol = phi ptr [ %i.nk, %.lr.ph257.prol ], [ %.1151255.ph, %.lr.ph257.preheader ] ; 2 uses
  %.1153254.prol = phi ptr [ %i.nj, %.lr.ph257.prol ], [ %.1153254.ph, %.lr.ph257.preheader ] ; 2 uses
  %.11253.prol = phi ptr [ %i.ni, %.lr.ph257.prol ], [ %.11253.ph, %.lr.ph257.preheader ] ; 3 uses
  %prol.iter519 = phi i32 [ %prol.iter519.next, %.lr.ph257.prol ], [ 0, %.lr.ph257.preheader ]
  %i.nf = load i8, ptr %.1153254.prol, align 1, !tbaa !90
  store i8 %i.nf, ptr %.11253.prol, align 1, !tbaa !90
  %i.ng = load i8, ptr %.1151255.prol, align 1, !tbaa !90
  %i.nh = getelementptr inbounds nuw i8, ptr %.11253.prol, i64 1
  store i8 %i.ng, ptr %i.nh, align 1, !tbaa !90
  %i.ni = getelementptr inbounds nuw i8, ptr %.11253.prol, i64 2 ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.1153254.prol, i64 1 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.1151255.prol, i64 1 ; 2 uses
  %i.nl = add nuw nsw i32 %.1256.prol, 1          ; 2 uses
  %prol.iter519.next = add i32 %prol.iter519, 1   ; 2 uses
  %prol.iter519.cmp.not = icmp eq i32 %prol.iter519.next, %xtraiter517
  br i1 %prol.iter519.cmp.not, label %.lr.ph257.prol.loopexit, label %.lr.ph257.prol, !llvm.loop !716

.lr.ph257.prol.loopexit:                          ; preds = %.lr.ph257.prol, %.lr.ph257.preheader
  %.lcssa480.unr = phi ptr [ poison, %.lr.ph257.preheader ], [ %i.ni, %.lr.ph257.prol ]
  %.1256.unr = phi i32 [ %.1256.ph, %.lr.ph257.preheader ], [ %i.nl, %.lr.ph257.prol ]
  %.1151255.unr = phi ptr [ %.1151255.ph, %.lr.ph257.preheader ], [ %i.nk, %.lr.ph257.prol ]
  %.1153254.unr = phi ptr [ %.1153254.ph, %.lr.ph257.preheader ], [ %i.nj, %.lr.ph257.prol ]
  %.11253.unr = phi ptr [ %.11253.ph, %.lr.ph257.preheader ], [ %i.ni, %.lr.ph257.prol ]
  %i.nm = sub i32 %.1256.ph, %5
  %i.nn = icmp ugt i32 %i.nm, -4
  br i1 %i.nn, label %._crit_edge258, label %.lr.ph257

.lr.ph248:                                        ; preds = %.lr.ph248.preheader, %.lr.ph248
  %.0149246 = phi i32 [ %i.oa, %.lr.ph248 ], [ %.0149246.ph, %.lr.ph248.preheader ]
  %.0150245 = phi ptr [ %i.nz, %.lr.ph248 ], [ %.0150245.ph, %.lr.ph248.preheader ] ; 3 uses
  %.0152244 = phi ptr [ %i.ny, %.lr.ph248 ], [ %.0152244.ph, %.lr.ph248.preheader ] ; 3 uses
  %.10243 = phi ptr [ %i.nx, %.lr.ph248 ], [ %.10243.ph, %.lr.ph248.preheader ] ; 5 uses
  %i.no = load i8, ptr %.0152244, align 1, !tbaa !90
  store i8 %i.no, ptr %.10243, align 1, !tbaa !90
  %i.np = getelementptr inbounds nuw i8, ptr %.0152244, i64 1
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !90
  %i.nr = getelementptr inbounds nuw i8, ptr %.10243, i64 1
  store i8 %i.nq, ptr %i.nr, align 1, !tbaa !90
  %i.ns = load i8, ptr %.0150245, align 1, !tbaa !90
  %i.nt = getelementptr inbounds nuw i8, ptr %.10243, i64 2
  store i8 %i.ns, ptr %i.nt, align 1, !tbaa !90
  %i.nu = getelementptr inbounds nuw i8, ptr %.0150245, i64 1
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !90
  %i.nw = getelementptr inbounds nuw i8, ptr %.10243, i64 3
  store i8 %i.nv, ptr %i.nw, align 1, !tbaa !90
  %i.nx = getelementptr inbounds nuw i8, ptr %.10243, i64 4 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.0152244, i64 2 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.0150245, i64 2 ; 2 uses
  %i.oa = add nuw nsw i32 %.0149246, 2            ; 2 uses
  %i.ob = or disjoint i32 %i.oa, 1
  %i.oc = icmp slt i32 %i.ob, %5
  br i1 %i.oc, label %.lr.ph248, label %.preheader182, !llvm.loop !717

.lr.ph257:                                        ; preds = %.lr.ph257.prol.loopexit, %.lr.ph257
  %.1256 = phi i32 [ %i.pb, %.lr.ph257 ], [ %.1256.unr, %.lr.ph257.prol.loopexit ]
  %.1151255 = phi ptr [ %i.pa, %.lr.ph257 ], [ %.1151255.unr, %.lr.ph257.prol.loopexit ] ; 5 uses
  %.1153254 = phi ptr [ %i.oz, %.lr.ph257 ], [ %.1153254.unr, %.lr.ph257.prol.loopexit ] ; 5 uses
  %.11253 = phi ptr [ %i.oy, %.lr.ph257 ], [ %.11253.unr, %.lr.ph257.prol.loopexit ] ; 9 uses
  %i.od = load i8, ptr %.1153254, align 1, !tbaa !90
  store i8 %i.od, ptr %.11253, align 1, !tbaa !90
  %i.oe = load i8, ptr %.1151255, align 1, !tbaa !90
  %i.of = getelementptr inbounds nuw i8, ptr %.11253, i64 1
  store i8 %i.oe, ptr %i.of, align 1, !tbaa !90
  %i.og = getelementptr inbounds nuw i8, ptr %.11253, i64 2
  %i.oh = getelementptr inbounds nuw i8, ptr %.1153254, i64 1
  %i.oi = getelementptr inbounds nuw i8, ptr %.1151255, i64 1
  %i.oj = load i8, ptr %i.oh, align 1, !tbaa !90
  store i8 %i.oj, ptr %i.og, align 1, !tbaa !90
  %i.ok = load i8, ptr %i.oi, align 1, !tbaa !90
  %i.ol = getelementptr inbounds nuw i8, ptr %.11253, i64 3
  store i8 %i.ok, ptr %i.ol, align 1, !tbaa !90
  %i.om = getelementptr inbounds nuw i8, ptr %.11253, i64 4
  %i.on = getelementptr inbounds nuw i8, ptr %.1153254, i64 2
end_hunk_0
begin_hunk_1_@_ZN4ncnn15Gemm_x86_avx51220create_pipeline_int8ERKNS_6OptionE.omp_outlined.9:bb.a
  %lcmp.mod409.not = icmp eq i32 %xtraiter408, 0
  br i1 %lcmp.mod409.not, label %.lr.ph235.i.prol.loopexit, label %.lr.ph235.i.prol

.lr.ph235.i.prol:                                 ; preds = %.lr.ph235.i.preheader, %.lr.ph235.i.prol
  %.8234.i.prol = phi ptr [ %i.jx, %.lr.ph235.i.prol ], [ %.7.lcssa.i, %.lr.ph235.i.preheader ] ; 2 uses
  %.1162233.i.prol = phi i32 [ %i.jz, %.lr.ph235.i.prol ], [ %.0161.lcssa.i, %.lr.ph235.i.preheader ]
  %.1164232.i.prol = phi ptr [ %i.jy, %.lr.ph235.i.prol ], [ %.0163.lcssa.i, %.lr.ph235.i.preheader ] ; 2 uses
  %prol.iter410 = phi i32 [ %prol.iter410.next, %.lr.ph235.i.prol ], [ 0, %.lr.ph235.i.preheader ]
  %i.js = call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.1164232.i.prol, <4 x i32> %i.jj, <4 x i32> splat (i32 -1), i8 1)
  %i.jt = shufflevector <4 x i32> %i.js, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ju = trunc <16 x i32> %i.jt to <16 x i8>
  %i.jv = bitcast <16 x i8> %i.ju to <4 x float>
  %i.jw = extractelement <4 x float> %i.jv, i64 0
  store float %i.jw, ptr %.8234.i.prol, align 1, !tbaa !90
  %i.jx = getelementptr inbounds nuw i8, ptr %.8234.i.prol, i64 4 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.1164232.i.prol, i64 1 ; 2 uses
  %i.jz = add nuw nsw i32 %.1162233.i.prol, 1     ; 2 uses
  %prol.iter410.next = add i32 %prol.iter410, 1   ; 2 uses
  %prol.iter410.cmp.not = icmp eq i32 %prol.iter410.next, %xtraiter408
  br i1 %prol.iter410.cmp.not, label %.lr.ph235.i.prol.loopexit, label %.lr.ph235.i.prol, !llvm.loop !749

.lr.ph235.i.prol.loopexit:                        ; preds = %.lr.ph235.i.prol, %.lr.ph235.i.preheader
  %.lcssa363.unr = phi ptr [ poison, %.lr.ph235.i.preheader ], [ %i.jx, %.lr.ph235.i.prol ]
  %.8234.i.unr = phi ptr [ %.7.lcssa.i, %.lr.ph235.i.preheader ], [ %i.jx, %.lr.ph235.i.prol ]
  %.1162233.i.unr = phi i32 [ %.0161.lcssa.i, %.lr.ph235.i.preheader ], [ %i.jz, %.lr.ph235.i.prol ]
  %.1164232.i.unr = phi ptr [ %.0163.lcssa.i, %.lr.ph235.i.preheader ], [ %i.jy, %.lr.ph235.i.prol ]
  %i.ka = sub i32 %.0161.lcssa.i, %.sroa.speculated
  %i.kb = icmp ugt i32 %i.ka, -4
  br i1 %i.kb, label %._crit_edge236.i, label %.lr.ph235.i

.lr.ph228.i:                                      ; preds = %.lr.ph228.i.preheader, %.lr.ph228.i
  %.7226.i = phi ptr [ %i.ky, %.lr.ph228.i ], [ %.6239.i, %.lr.ph228.i.preheader ] ; 5 uses
  %.0163224.i = phi ptr [ %i.kz, %.lr.ph228.i ], [ %i.jg, %.lr.ph228.i.preheader ] ; 5 uses
  %niter407 = phi i32 [ %niter407.next.3, %.lr.ph228.i ], [ 0, %.lr.ph228.i.preheader ]
  %i.kc = call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.0163224.i, <4 x i32> %i.jj, <4 x i32> splat (i32 -1), i8 1)
  %i.kd = trunc <4 x i32> %i.kc to <4 x i16>
  %i.ke = bitcast <4 x i16> %i.kd to <1 x i64>
  %i.kf = extractelement <1 x i64> %i.ke, i64 0
  store i64 %i.kf, ptr %.7226.i, align 1, !tbaa !90
  %i.kg = getelementptr inbounds nuw i8, ptr %.7226.i, i64 8
  %i.kh = getelementptr inbounds nuw i8, ptr %.0163224.i, i64 2
  %i.ki = call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.kh, <4 x i32> %i.jj, <4 x i32> splat (i32 -1), i8 1)
  %i.kj = trunc <4 x i32> %i.ki to <4 x i16>
  %i.kk = bitcast <4 x i16> %i.kj to <1 x i64>
  %i.kl = extractelement <1 x i64> %i.kk, i64 0
  store i64 %i.kl, ptr %i.kg, align 1, !tbaa !90
  %i.km = getelementptr inbounds nuw i8, ptr %.7226.i, i64 16
  %i.kn = getelementptr inbounds nuw i8, ptr %.0163224.i, i64 4
  %i.ko = call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.kn, <4 x i32> %i.jj, <4 x i32> splat (i32 -1), i8 1)
  %i.kp = trunc <4 x i32> %i.ko to <4 x i16>
  %i.kq = bitcast <4 x i16> %i.kp to <1 x i64>
  %i.kr = extractelement <1 x i64> %i.kq, i64 0
  store i64 %i.kr, ptr %i.km, align 1, !tbaa !90
  %i.ks = getelementptr inbounds nuw i8, ptr %.7226.i, i64 24
  %i.kt = getelementptr inbounds nuw i8, ptr %.0163224.i, i64 6
  %i.ku = call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.kt, <4 x i32> %i.jj, <4 x i32> splat (i32 -1), i8 1)
  %i.kv = trunc <4 x i32> %i.ku to <4 x i16>
  %i.kw = bitcast <4 x i16> %i.kv to <1 x i64>
  %i.kx = extractelement <1 x i64> %i.kw, i64 0
  store i64 %i.kx, ptr %i.ks, align 1, !tbaa !90
  %i.ky = getelementptr inbounds nuw i8, ptr %.7226.i, i64 32 ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.0163224.i, i64 8 ; 3 uses
  %niter407.next.3 = add i32 %niter407, 4         ; 2 uses
  %niter407.ncmp.3.not = icmp eq i32 %niter407.next.3, %unroll_iter406
  br i1 %niter407.ncmp.3.not, label %.preheader184.i.loopexit.unr-lcssa, label %.lr.ph228.i, !llvm.loop !750

.lr.ph235.i:                                      ; preds = %.lr.ph235.i.prol.loopexit, %.lr.ph235.i
  %.8234.i = phi ptr [ %i.ma, %.lr.ph235.i ], [ %.8234.i.unr, %.lr.ph235.i.prol.loopexit ] ; 5 uses
  %.1162233.i = phi i32 [ %i.mc, %.lr.ph235.i ], [ %.1162233.i.unr, %.lr.ph235.i.prol.loopexit ]
  %.1164232.i = phi ptr [ %i.mb, %.lr.ph235.i ], [ %.1164232.i.unr, %.lr.ph235.i.prol.loopexit ] ; 5 uses
  %i.la = call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %.1164232.i, <4 x i32> %i.jj, <4 x i32> splat (i32 -1), i8 1)
  %i.lb = shufflevector <4 x i32> %i.la, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lc = trunc <16 x i32> %i.lb to <16 x i8>
  %i.ld = bitcast <16 x i8> %i.lc to <4 x float>
  %i.le = extractelement <4 x float> %i.ld, i64 0
  store float %i.le, ptr %.8234.i, align 1, !tbaa !90
  %i.lf = getelementptr inbounds nuw i8, ptr %.8234.i, i64 4
  %i.lg = getelementptr inbounds nuw i8, ptr %.1164232.i, i64 1
  %i.lh = call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.lg, <4 x i32> %i.jj, <4 x i32> splat (i32 -1), i8 1)
  %i.li = shufflevector <4 x i32> %i.lh, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lj = trunc <16 x i32> %i.li to <16 x i8>
  %i.lk = bitcast <16 x i8> %i.lj to <4 x float>
  %i.ll = extractelement <4 x float> %i.lk, i64 0
  store float %i.ll, ptr %i.lf, align 1, !tbaa !90
  %i.lm = getelementptr inbounds nuw i8, ptr %.8234.i, i64 8
  %i.ln = getelementptr inbounds nuw i8, ptr %.1164232.i, i64 2
  %i.lo = call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.ln, <4 x i32> %i.jj, <4 x i32> splat (i32 -1), i8 1)
  %i.lp = shufflevector <4 x i32> %i.lo, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lq = trunc <16 x i32> %i.lp to <16 x i8>
  %i.lr = bitcast <16 x i8> %i.lq to <4 x float>
  %i.ls = extractelement <4 x float> %i.lr, i64 0
  store float %i.ls, ptr %i.lm, align 1, !tbaa !90
  %i.lt = getelementptr inbounds nuw i8, ptr %.8234.i, i64 12
  %i.lu = getelementptr inbounds nuw i8, ptr %.1164232.i, i64 3
  %i.lv = call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.lu, <4 x i32> %i.jj, <4 x i32> splat (i32 -1), i8 1)
  %i.lw = shufflevector <4 x i32> %i.lv, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lx = trunc <16 x i32> %i.lw to <16 x i8>
  %i.ly = bitcast <16 x i8> %i.lx to <4 x float>
  %i.lz = extractelement <4 x float> %i.ly, i64 0
  store float %i.lz, ptr %i.lt, align 1, !tbaa !90
  %i.ma = getelementptr inbounds nuw i8, ptr %.8234.i, i64 16 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.1164232.i, i64 4
  %i.mc = add nuw nsw i32 %.1162233.i, 4          ; 2 uses
  %exitcond301.not.i.3 = icmp eq i32 %i.mc, %.sroa.speculated
  br i1 %exitcond301.not.i.3, label %._crit_edge236.i, label %.lr.ph235.i, !llvm.loop !751

._crit_edge236.i:                                 ; preds = %.lr.ph235.i.prol.loopexit, %.lr.ph235.i, %.preheader184.i
  %.8.lcssa.i = phi ptr [ %.7.lcssa.i, %.preheader184.i ], [ %.lcssa363.unr, %.lr.ph235.i.prol.loopexit ], [ %i.ma, %.lr.ph235.i ] ; 2 uses
  %indvars.iv.next303.i = add nuw nsw i64 %indvars.iv302.i, 4 ; 3 uses
  %i.md = icmp slt i64 %indvars.iv.next303.i, %invariant.op332.i
  br i1 %i.md, label %bb.l, label %.preheader183.loopexit.i, !llvm.loop !752

.preheader.loopexit.i:                            ; preds = %._crit_edge258.i
  %i.me = trunc nsw i64 %indvars.iv.next307.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader183.i
  %.3159.lcssa.i = phi i32 [ %.2158.lcssa.i, %.preheader183.i ], [ %i.me, %.preheader.loopexit.i ] ; 2 uses
  %.9.lcssa.i = phi ptr [ %.6.lcssa.i, %.preheader183.i ], [ %.11.lcssa.i, %.preheader.loopexit.i ]
  %i.mf = icmp slt i32 %.3159.lcssa.i, %.sroa.speculated86
  br i1 %i.mf, label %.lr.ph274.i, label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph274.i:                                      ; preds = %.preheader.i
  %i.mg = sext i32 %.0118 to i64                  ; 2 uses
  %i.mh = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.mh, label %.lr.ph269.preheader.i, label %_ZN4ncnnL16pack_B_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph269.preheader.i:                            ; preds = %.lr.ph274.i
  %i.mi = sext i32 %.3159.lcssa.i to i64
  %wide.trip.count.i = sext i32 %.sroa.speculated86 to i64
  %i.mj = zext nneg i32 %.sroa.speculated to i64  ; 5 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated, 16
  %min.iters.check226 = icmp ult i32 %.sroa.speculated, 256
  %i.mk = and i64 %i.mj, 240
  %n.vec = and i64 %i.mj, 2147483392              ; 6 uses
  %i.ml = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.mj
  %min.epilog.iters.check = icmp eq i64 %i.mk, 0
  %n.vec231 = and i64 %i.mj, 2147483632           ; 5 uses
  %i.mm = trunc nuw nsw i64 %n.vec231 to i32
  %cmp.n237 = icmp eq i64 %n.vec231, %i.mj
  br label %iter.check

bb.m:                                             ; preds = %._crit_edge258.i, %.lr.ph262.i
  %indvars.iv306.i = phi i64 [ %i.ih, %.lr.ph262.i ], [ %indvars.iv.next307.i, %._crit_edge258.i ] ; 2 uses
  %.9261.i = phi ptr [ %.6.lcssa.i, %.lr.ph262.i ], [ %.11.lcssa.i, %._crit_edge258.i ] ; 10 uses
  %i.mn = add i64 %indvars.iv306.i, %i.aj         ; 2 uses
  %i.mo = load ptr, ptr %i.z, align 8, !tbaa !25  ; 4 uses
  %i.mp = load i32, ptr %i.aa, align 4, !tbaa !78
  %i.mq = sext i32 %i.mp to i64
  %i.mr = load i64, ptr %i.ab, align 8, !tbaa !64
  %i.ms = mul i64 %i.mr, %i.mq                    ; 2 uses
  %i.mt = mul i64 %i.ms, %i.mn                    ; 2 uses
  %i.mu = getelementptr i8, ptr %i.mo, i64 %i.mt
  %i.mv = getelementptr i8, ptr %i.mu, i64 %i.ie  ; 8 uses
  %i.mw = add nsw i64 %i.mn, 1
  %i.mx = mul i64 %i.ms, %i.mw                    ; 2 uses
  %i.my = getelementptr i8, ptr %i.mo, i64 %i.mx
  %i.mz = getelementptr i8, ptr %i.my, i64 %i.ie  ; 8 uses
  br i1 %i.if, label %iter.check329, label %.preheader182.i

iter.check329:                                    ; preds = %bb.m
  br i1 %min.iters.check303, label %.lr.ph248.i.preheader, label %vector.memcheck304

vector.memcheck304:                               ; preds = %iter.check329
  %i.na = getelementptr i8, ptr %.9261.i, i64 %i.in
  %i.nb = getelementptr i8, ptr %i.na, i64 4      ; 2 uses
  %i.nc = getelementptr i8, ptr %i.mo, i64 %i.mx
  %i.nd = getelementptr i8, ptr %i.nc, i64 %i.il
  %i.ne = getelementptr i8, ptr %i.nd, i64 %i.ie
  %i.nf = getelementptr i8, ptr %i.ne, i64 2
  %i.ng = getelementptr i8, ptr %i.mo, i64 %i.mt
  %i.nh = getelementptr i8, ptr %i.ng, i64 %i.il
  %i.ni = getelementptr i8, ptr %i.nh, i64 %i.ie
  %i.nj = getelementptr i8, ptr %i.ni, i64 2
  %bound0305 = icmp ult ptr %.9261.i, %i.nf
  %bound1306 = icmp ult ptr %i.mz, %i.nb
  %found.conflict307 = and i1 %bound0305, %bound1306
  %bound0308 = icmp ult ptr %.9261.i, %i.nj
  %bound1309 = icmp ult ptr %i.mv, %i.nb
  %found.conflict310 = and i1 %bound0308, %bound1309
  %conflict.rdx311 = or i1 %found.conflict307, %found.conflict310
  br i1 %conflict.rdx311, label %.lr.ph248.i.preheader, label %vector.main.loop.iter.check312

vector.main.loop.iter.check312:                   ; preds = %vector.memcheck304
  br i1 %min.iters.check313, label %vec.epilog.ph333, label %vector.ph314

vector.ph314:                                     ; preds = %vector.main.loop.iter.check312
  %i.nk = getelementptr i8, ptr %i.mz, i64 %i.is  ; 2 uses
  %i.nl = getelementptr i8, ptr %i.mv, i64 %i.is  ; 2 uses
  %i.nm = getelementptr i8, ptr %.9261.i, i64 %i.it ; 2 uses
  br label %vector.body316

vector.body316:                                   ; preds = %vector.ph314, %vector.body316
  %index317 = phi i64 [ 0, %vector.ph314 ], [ %index.next326, %vector.body316 ] ; 3 uses
  %i.nn = shl i64 %index317, 1                    ; 2 uses
  %next.gep318 = getelementptr i8, ptr %i.mz, i64 %i.nn
  %next.gep319 = getelementptr i8, ptr %i.mv, i64 %i.nn
  %i.no = shl i64 %index317, 2
  %next.gep320 = getelementptr i8, ptr %.9261.i, i64 %i.no
  %wide.vec = load <64 x i8>, ptr %next.gep319, align 1, !tbaa !90, !alias.scope !795
  %wide.vec322 = load <64 x i8>, ptr %next.gep318, align 1, !tbaa !90, !alias.scope !796
  %interleaved.vec325 = shufflevector <64 x i8> %wide.vec, <64 x i8> %wide.vec322, <128 x i32> <i32 0, i32 1, i32 64, i32 65, i32 2, i32 3, i32 66, i32 67, i32 4, i32 5, i32 68, i32 69, i32 6, i32 7, i32 70, i32 71, i32 8, i32 9, i32 72, i32 73, i32 10, i32 11, i32 74, i32 75, i32 12, i32 13, i32 76, i32 77, i32 14, i32 15, i32 78, i32 79, i32 16, i32 17, i32 80, i32 81, i32 18, i32 19, i32 82, i32 83, i32 20, i32 21, i32 84, i32 85, i32 22, i32 23, i32 86, i32 87, i32 24, i32 25, i32 88, i32 89, i32 26, i32 27, i32 90, i32 91, i32 28, i32 29, i32 92, i32 93, i32 30, i32 31, i32 94, i32 95, i32 32, i32 33, i32 96, i32 97, i32 34, i32 35, i32 98, i32 99, i32 36, i32 37, i32 100, i32 101, i32 38, i32 39, i32 102, i32 103, i32 40, i32 41, i32 104, i32 105, i32 42, i32 43, i32 106, i32 107, i32 44, i32 45, i32 108, i32 109, i32 46, i32 47, i32 110, i32 111, i32 48, i32 49, i32 112, i32 113, i32 50, i32 51, i32 114, i32 115, i32 52, i32 53, i32 116, i32 117, i32 54, i32 55, i32 118, i32 119, i32 56, i32 57, i32 120, i32 121, i32 58, i32 59, i32 122, i32 123, i32 60, i32 61, i32 124, i32 125, i32 62, i32 63, i32 126, i32 127>
  store <128 x i8> %interleaved.vec325, ptr %next.gep320, align 1, !tbaa !90, !alias.scope !797, !noalias !798
  %index.next326 = add nuw i64 %index317, 32      ; 2 uses
  %i.np = icmp eq i64 %index.next326, %n.vec315
  br i1 %i.np, label %middle.block327, label %vector.body316, !llvm.loop !757

middle.block327:                                  ; preds = %vector.body316
  br i1 %cmp.n328, label %.preheader182.i, label %vec.epilog.iter.check330

vec.epilog.iter.check330:                         ; preds = %middle.block327
  br i1 %min.epilog.iters.check332, label %.lr.ph248.i.preheader, label %vec.epilog.ph333, !prof !104

vec.epilog.ph333:                                 ; preds = %vector.main.loop.iter.check312, %vec.epilog.iter.check330
  %vec.epilog.resume.val334 = phi i64 [ %n.vec315, %vec.epilog.iter.check330 ], [ 0, %vector.main.loop.iter.check312 ]
  %i.nq = getelementptr i8, ptr %i.mz, i64 %i.iw  ; 2 uses
  %i.nr = getelementptr i8, ptr %i.mv, i64 %i.iw  ; 2 uses
  %i.ns = getelementptr i8, ptr %.9261.i, i64 %i.ix ; 2 uses
  br label %vec.epilog.vector.body336

vec.epilog.vector.body336:                        ; preds = %vec.epilog.vector.body336, %vec.epilog.ph333
  %index337 = phi i64 [ %vec.epilog.resume.val334, %vec.epilog.ph333 ], [ %index.next348, %vec.epilog.vector.body336 ] ; 3 uses
  %i.nt = shl i64 %index337, 1                    ; 2 uses
  %next.gep338 = getelementptr i8, ptr %i.mz, i64 %i.nt
  %next.gep339 = getelementptr i8, ptr %i.mv, i64 %i.nt
  %i.nu = shl i64 %index337, 2
  %next.gep340 = getelementptr i8, ptr %.9261.i, i64 %i.nu
  %wide.vec341 = load <16 x i8>, ptr %next.gep339, align 1, !tbaa !90, !alias.scope !795
  %wide.vec344 = load <16 x i8>, ptr %next.gep338, align 1, !tbaa !90, !alias.scope !796
  %interleaved.vec347 = shufflevector <16 x i8> %wide.vec341, <16 x i8> %wide.vec344, <32 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23, i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  store <32 x i8> %interleaved.vec347, ptr %next.gep340, align 1, !tbaa !90, !alias.scope !797, !noalias !798
  %index.next348 = add nuw i64 %index337, 8       ; 2 uses
  %i.nv = icmp eq i64 %index.next348, %n.vec335
  br i1 %i.nv, label %vec.epilog.middle.block349, label %vec.epilog.vector.body336, !llvm.loop !758

vec.epilog.middle.block349:                       ; preds = %vec.epilog.vector.body336
  br i1 %cmp.n350, label %.preheader182.i, label %.lr.ph248.i.preheader

.lr.ph248.i.preheader:                            ; preds = %iter.check329, %vector.memcheck304, %vec.epilog.iter.check330, %vec.epilog.middle.block349
  %.0149246.i.ph = phi i32 [ 0, %iter.check329 ], [ 0, %vector.memcheck304 ], [ %i.ir, %vec.epilog.iter.check330 ], [ %i.iv, %vec.epilog.middle.block349 ]
  %.0150245.i.ph = phi ptr [ %i.mz, %iter.check329 ], [ %i.mz, %vector.memcheck304 ], [ %i.nk, %vec.epilog.iter.check330 ], [ %i.nq, %vec.epilog.middle.block349 ]
  %.0152244.i.ph = phi ptr [ %i.mv, %iter.check329 ], [ %i.mv, %vector.memcheck304 ], [ %i.nl, %vec.epilog.iter.check330 ], [ %i.nr, %vec.epilog.middle.block349 ]
  %.10243.i.ph = phi ptr [ %.9261.i, %iter.check329 ], [ %.9261.i, %vector.memcheck304 ], [ %i.nm, %vec.epilog.iter.check330 ], [ %i.ns, %vec.epilog.middle.block349 ]
  br label %.lr.ph248.i

.preheader182.i:                                  ; preds = %.lr.ph248.i, %middle.block327, %vec.epilog.middle.block349, %bb.m
  %.10.lcssa.i = phi ptr [ %.9261.i, %bb.m ], [ %i.ns, %vec.epilog.middle.block349 ], [ %i.nm, %middle.block327 ], [ %i.pu, %.lr.ph248.i ] ; 10 uses
  %.0152.lcssa.i = phi ptr [ %i.mv, %bb.m ], [ %i.nr, %vec.epilog.middle.block349 ], [ %i.nl, %middle.block327 ], [ %i.pv, %.lr.ph248.i ] ; 8 uses
  %.0150.lcssa.i = phi ptr [ %i.mz, %bb.m ], [ %i.nq, %vec.epilog.middle.block349 ], [ %i.nk, %middle.block327 ], [ %i.pw, %.lr.ph248.i ] ; 8 uses
  %.0149.lcssa.i = phi i32 [ 0, %bb.m ], [ %i.ig, %vec.epilog.middle.block349 ], [ %i.ig, %middle.block327 ], [ %i.ig, %.lr.ph248.i ] ; 7 uses
  %i.nw = icmp slt i32 %.0149.lcssa.i, %.sroa.speculated
  br i1 %i.nw, label %iter.check268, label %._crit_edge258.i

iter.check268:                                    ; preds = %.preheader182.i
  %i.nx = xor i32 %.0149.lcssa.i, -1
  %i.ny = add i32 %.sroa.speculated, %i.nx        ; 3 uses
  %i.nz = zext i32 %i.ny to i64
  %i.oa = add nuw nsw i64 %i.nz, 1                ; 5 uses
  %min.iters.check249 = icmp ult i32 %i.ny, 7
  br i1 %min.iters.check249, label %.lr.ph257.i.preheader, label %vector.memcheck250

vector.memcheck250:                               ; preds = %iter.check268
  %i.ob = xor i32 %.0149.lcssa.i, -1
  %i.oc = add i32 %.sroa.speculated, %i.ob
  %i.od = zext i32 %i.oc to i64                   ; 2 uses
  %i.oe = shl nuw nsw i64 %i.od, 1
  %i.of = getelementptr i8, ptr %.10.lcssa.i, i64 %i.oe
  %i.og = getelementptr i8, ptr %i.of, i64 2      ; 2 uses
  %i.oh = add nuw nsw i64 %i.od, 1                ; 2 uses
  %i.oi = getelementptr i8, ptr %.0150.lcssa.i, i64 %i.oh
  %i.oj = getelementptr i8, ptr %.0152.lcssa.i, i64 %i.oh
  %bound0 = icmp ult ptr %.10.lcssa.i, %i.oi
  %bound1 = icmp ult ptr %.0150.lcssa.i, %i.og
  %found.conflict = and i1 %bound0, %bound1
  %bound0251 = icmp ult ptr %.10.lcssa.i, %i.oj
  %bound1252 = icmp ult ptr %.0152.lcssa.i, %i.og
  %found.conflict253 = and i1 %bound0251, %bound1252
  %conflict.rdx = or i1 %found.conflict, %found.conflict253
  br i1 %conflict.rdx, label %.lr.ph257.i.preheader, label %vector.main.loop.iter.check254

vector.main.loop.iter.check254:                   ; preds = %vector.memcheck250
  %min.iters.check255 = icmp ult i32 %i.ny, 63
  br i1 %min.iters.check255, label %vec.epilog.ph272, label %vector.ph256

vector.ph256:                                     ; preds = %vector.main.loop.iter.check254
  %i.ok = and i64 %i.oa, 56
  %n.vec257 = and i64 %i.oa, 8589934528           ; 7 uses
  %i.ol = trunc i64 %n.vec257 to i32
  %i.om = add i32 %.0149.lcssa.i, %i.ol
  %i.on = getelementptr i8, ptr %.0150.lcssa.i, i64 %n.vec257
  %i.oo = getelementptr i8, ptr %.0152.lcssa.i, i64 %n.vec257
  %i.op = shl nuw nsw i64 %n.vec257, 1
  %i.oq = getelementptr i8, ptr %.10.lcssa.i, i64 %i.op ; 2 uses
  br label %vector.body258

vector.body258:                                   ; preds = %vector.ph256, %vector.body258
  %index259 = phi i64 [ 0, %vector.ph256 ], [ %index.next265, %vector.body258 ] ; 4 uses
  %next.gep260 = getelementptr i8, ptr %.0150.lcssa.i, i64 %index259
  %next.gep261 = getelementptr i8, ptr %.0152.lcssa.i, i64 %index259
  %i.or = shl i64 %index259, 1
  %next.gep262 = getelementptr i8, ptr %.10.lcssa.i, i64 %i.or
  %wide.load263 = load <64 x i8>, ptr %next.gep261, align 1, !tbaa !90, !alias.scope !799
  %wide.load264 = load <64 x i8>, ptr %next.gep260, align 1, !tbaa !90, !alias.scope !800
  %interleaved.vec = shufflevector <64 x i8> %wide.load263, <64 x i8> %wide.load264, <128 x i32> <i32 0, i32 64, i32 1, i32 65, i32 2, i32 66, i32 3, i32 67, i32 4, i32 68, i32 5, i32 69, i32 6, i32 70, i32 7, i32 71, i32 8, i32 72, i32 9, i32 73, i32 10, i32 74, i32 11, i32 75, i32 12, i32 76, i32 13, i32 77, i32 14, i32 78, i32 15, i32 79, i32 16, i32 80, i32 17, i32 81, i32 18, i32 82, i32 19, i32 83, i32 20, i32 84, i32 21, i32 85, i32 22, i32 86, i32 23, i32 87, i32 24, i32 88, i32 25, i32 89, i32 26, i32 90, i32 27, i32 91, i32 28, i32 92, i32 29, i32 93, i32 30, i32 94, i32 31, i32 95, i32 32, i32 96, i32 33, i32 97, i32 34, i32 98, i32 35, i32 99, i32 36, i32 100, i32 37, i32 101, i32 38, i32 102, i32 39, i32 103, i32 40, i32 104, i32 41, i32 105, i32 42, i32 106, i32 43, i32 107, i32 44, i32 108, i32 45, i32 109, i32 46, i32 110, i32 47, i32 111, i32 48, i32 112, i32 49, i32 113, i32 50, i32 114, i32 51, i32 115, i32 52, i32 116, i32 53, i32 117, i32 54, i32 118, i32 55, i32 119, i32 56, i32 120, i32 57, i32 121, i32 58, i32 122, i32 59, i32 123, i32 60, i32 124, i32 61, i32 125, i32 62, i32 126, i32 63, i32 127>
  store <128 x i8> %interleaved.vec, ptr %next.gep262, align 1, !tbaa !90, !alias.scope !801, !noalias !802
  %index.next265 = add nuw i64 %index259, 64      ; 2 uses
  %i.os = icmp eq i64 %index.next265, %n.vec257
  br i1 %i.os, label %middle.block266, label %vector.body258, !llvm.loop !763

middle.block266:                                  ; preds = %vector.body258
  %cmp.n267 = icmp eq i64 %i.oa, %n.vec257
  br i1 %cmp.n267, label %._crit_edge258.i, label %vec.epilog.iter.check269

vec.epilog.iter.check269:                         ; preds = %middle.block266
  %min.epilog.iters.check271 = icmp eq i64 %i.ok, 0
  br i1 %min.epilog.iters.check271, label %.lr.ph257.i.preheader, label %vec.epilog.ph272, !prof !73

vec.epilog.ph272:                                 ; preds = %vector.main.loop.iter.check254, %vec.epilog.iter.check269
  %vec.epilog.resume.val273 = phi i64 [ %n.vec257, %vec.epilog.iter.check269 ], [ 0, %vector.main.loop.iter.check254 ]
  %n.vec274 = and i64 %i.oa, 8589934584           ; 6 uses
  %i.ot = trunc i64 %n.vec274 to i32
  %i.ou = add i32 %.0149.lcssa.i, %i.ot
  %i.ov = getelementptr i8, ptr %.0150.lcssa.i, i64 %n.vec274
  %i.ow = getelementptr i8, ptr %.0152.lcssa.i, i64 %n.vec274
  %i.ox = shl nuw nsw i64 %n.vec274, 1
  %i.oy = getelementptr i8, ptr %.10.lcssa.i, i64 %i.ox ; 2 uses
  br label %vec.epilog.vector.body275

vec.epilog.vector.body275:                        ; preds = %vec.epilog.vector.body275, %vec.epilog.ph272
  %index276 = phi i64 [ %vec.epilog.resume.val273, %vec.epilog.ph272 ], [ %index.next283, %vec.epilog.vector.body275 ] ; 4 uses
  %next.gep277 = getelementptr i8, ptr %.0150.lcssa.i, i64 %index276
  %next.gep278 = getelementptr i8, ptr %.0152.lcssa.i, i64 %index276
  %i.oz = shl i64 %index276, 1
  %next.gep279 = getelementptr i8, ptr %.10.lcssa.i, i64 %i.oz
  %wide.load280 = load <8 x i8>, ptr %next.gep278, align 1, !tbaa !90, !alias.scope !799
  %wide.load281 = load <8 x i8>, ptr %next.gep277, align 1, !tbaa !90, !alias.scope !800
  %interleaved.vec282 = shufflevector <8 x i8> %wide.load280, <8 x i8> %wide.load281, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec282, ptr %next.gep279, align 1, !tbaa !90, !alias.scope !801, !noalias !802
  %index.next283 = add nuw i64 %index276, 8       ; 2 uses
  %i.pa = icmp eq i64 %index.next283, %n.vec274
  br i1 %i.pa, label %vec.epilog.middle.block284, label %vec.epilog.vector.body275, !llvm.loop !764

vec.epilog.middle.block284:                       ; preds = %vec.epilog.vector.body275
  %cmp.n285 = icmp eq i64 %i.oa, %n.vec274
  br i1 %cmp.n285, label %._crit_edge258.i, label %.lr.ph257.i.preheader

.lr.ph257.i.preheader:                            ; preds = %iter.check268, %vector.memcheck250, %vec.epilog.iter.check269, %vec.epilog.middle.block284
  %.1256.i.ph = phi i32 [ %.0149.lcssa.i, %iter.check268 ], [ %.0149.lcssa.i, %vector.memcheck250 ], [ %i.om, %vec.epilog.iter.check269 ], [ %i.ou, %vec.epilog.middle.block284 ] ; 4 uses
  %.1151255.i.ph = phi ptr [ %.0150.lcssa.i, %iter.check268 ], [ %.0150.lcssa.i, %vector.memcheck250 ], [ %i.on, %vec.epilog.iter.check269 ], [ %i.ov, %vec.epilog.middle.block284 ] ; 2 uses
  %.1153254.i.ph = phi ptr [ %.0152.lcssa.i, %iter.check268 ], [ %.0152.lcssa.i, %vector.memcheck250 ], [ %i.oo, %vec.epilog.iter.check269 ], [ %i.ow, %vec.epilog.middle.block284 ] ; 2 uses
  %.11253.i.ph = phi ptr [ %.10.lcssa.i, %iter.check268 ], [ %.10.lcssa.i, %vector.memcheck250 ], [ %i.oq, %vec.epilog.iter.check269 ], [ %i.oy, %vec.epilog.middle.block284 ] ; 2 uses
  %i.pb = sub i32 %.sroa.speculated, %.1256.i.ph
  %xtraiter411 = and i32 %i.pb, 3                 ; 2 uses
  %lcmp.mod412.not = icmp eq i32 %xtraiter411, 0
  br i1 %lcmp.mod412.not, label %.lr.ph257.i.prol.loopexit, label %.lr.ph257.i.prol

.lr.ph257.i.prol:                                 ; preds = %.lr.ph257.i.preheader, %.lr.ph257.i.prol
  %.1256.i.prol = phi i32 [ %i.pi, %.lr.ph257.i.prol ], [ %.1256.i.ph, %.lr.ph257.i.preheader ]
  %.1151255.i.prol = phi ptr [ %i.ph, %.lr.ph257.i.prol ], [ %.1151255.i.ph, %.lr.ph257.i.preheader ] ; 2 uses
  %.1153254.i.prol = phi ptr [ %i.pg, %.lr.ph257.i.prol ], [ %.1153254.i.ph, %.lr.ph257.i.preheader ] ; 2 uses
  %.11253.i.prol = phi ptr [ %i.pf, %.lr.ph257.i.prol ], [ %.11253.i.ph, %.lr.ph257.i.preheader ] ; 3 uses
  %prol.iter413 = phi i32 [ %prol.iter413.next, %.lr.ph257.i.prol ], [ 0, %.lr.ph257.i.preheader ]
  %i.pc = load i8, ptr %.1153254.i.prol, align 1, !tbaa !90
  store i8 %i.pc, ptr %.11253.i.prol, align 1, !tbaa !90
  %i.pd = load i8, ptr %.1151255.i.prol, align 1, !tbaa !90
  %i.pe = getelementptr inbounds nuw i8, ptr %.11253.i.prol, i64 1
  store i8 %i.pd, ptr %i.pe, align 1, !tbaa !90
  %i.pf = getelementptr inbounds nuw i8, ptr %.11253.i.prol, i64 2 ; 3 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %.1153254.i.prol, i64 1 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %.1151255.i.prol, i64 1 ; 2 uses
  %i.pi = add nuw nsw i32 %.1256.i.prol, 1        ; 2 uses
  %prol.iter413.next = add i32 %prol.iter413, 1   ; 2 uses
  %prol.iter413.cmp.not = icmp eq i32 %prol.iter413.next, %xtraiter411
  br i1 %prol.iter413.cmp.not, label %.lr.ph257.i.prol.loopexit, label %.lr.ph257.i.prol, !llvm.loop !765

.lr.ph257.i.prol.loopexit:                        ; preds = %.lr.ph257.i.prol, %.lr.ph257.i.preheader
  %.lcssa367.unr = phi ptr [ poison, %.lr.ph257.i.preheader ], [ %i.pf, %.lr.ph257.i.prol ]
  %.1256.i.unr = phi i32 [ %.1256.i.ph, %.lr.ph257.i.preheader ], [ %i.pi, %.lr.ph257.i.prol ]
  %.1151255.i.unr = phi ptr [ %.1151255.i.ph, %.lr.ph257.i.preheader ], [ %i.ph, %.lr.ph257.i.prol ]
  %.1153254.i.unr = phi ptr [ %.1153254.i.ph, %.lr.ph257.i.preheader ], [ %i.pg, %.lr.ph257.i.prol ]
  %.11253.i.unr = phi ptr [ %.11253.i.ph, %.lr.ph257.i.preheader ], [ %i.pf, %.lr.ph257.i.prol ]
  %i.pj = sub i32 %.1256.i.ph, %.sroa.speculated
  %i.pk = icmp ugt i32 %i.pj, -4
  br i1 %i.pk, label %._crit_edge258.i, label %.lr.ph257.i

.lr.ph248.i:                                      ; preds = %.lr.ph248.i.preheader, %.lr.ph248.i
  %.0149246.i = phi i32 [ %i.px, %.lr.ph248.i ], [ %.0149246.i.ph, %.lr.ph248.i.preheader ]
  %.0150245.i = phi ptr [ %i.pw, %.lr.ph248.i ], [ %.0150245.i.ph, %.lr.ph248.i.preheader ] ; 3 uses
  %.0152244.i = phi ptr [ %i.pv, %.lr.ph248.i ], [ %.0152244.i.ph, %.lr.ph248.i.preheader ] ; 3 uses
  %.10243.i = phi ptr [ %i.pu, %.lr.ph248.i ], [ %.10243.i.ph, %.lr.ph248.i.preheader ] ; 5 uses
  %i.pl = load i8, ptr %.0152244.i, align 1, !tbaa !90
  store i8 %i.pl, ptr %.10243.i, align 1, !tbaa !90
  %i.pm = getelementptr inbounds nuw i8, ptr %.0152244.i, i64 1
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !90
  %i.po = getelementptr inbounds nuw i8, ptr %.10243.i, i64 1
  store i8 %i.pn, ptr %i.po, align 1, !tbaa !90
  %i.pp = load i8, ptr %.0150245.i, align 1, !tbaa !90
  %i.pq = getelementptr inbounds nuw i8, ptr %.10243.i, i64 2
  store i8 %i.pp, ptr %i.pq, align 1, !tbaa !90
  %i.pr = getelementptr inbounds nuw i8, ptr %.0150245.i, i64 1
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !90
  %i.pt = getelementptr inbounds nuw i8, ptr %.10243.i, i64 3
  store i8 %i.ps, ptr %i.pt, align 1, !tbaa !90
  %i.pu = getelementptr inbounds nuw i8, ptr %.10243.i, i64 4 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.0152244.i, i64 2 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %.0150245.i, i64 2 ; 2 uses
  %i.px = add nuw nsw i32 %.0149246.i, 2          ; 2 uses
  %i.py = or disjoint i32 %i.px, 1
  %i.pz = icmp slt i32 %i.py, %.sroa.speculated
  br i1 %i.pz, label %.lr.ph248.i, label %.preheader182.i, !llvm.loop !766

.lr.ph257.i:                                      ; preds = %.lr.ph257.i.prol.loopexit, %.lr.ph257.i
  %.1256.i = phi i32 [ %i.qy, %.lr.ph257.i ], [ %.1256.i.unr, %.lr.ph257.i.prol.loopexit ]
  %.1151255.i = phi ptr [ %i.qx, %.lr.ph257.i ], [ %.1151255.i.unr, %.lr.ph257.i.prol.loopexit ] ; 5 uses
  %.1153254.i = phi ptr [ %i.qw, %.lr.ph257.i ], [ %.1153254.i.unr, %.lr.ph257.i.prol.loopexit ] ; 5 uses
  %.11253.i = phi ptr [ %i.qv, %.lr.ph257.i ], [ %.11253.i.unr, %.lr.ph257.i.prol.loopexit ] ; 9 uses
  %i.qa = load i8, ptr %.1153254.i, align 1, !tbaa !90
  store i8 %i.qa, ptr %.11253.i, align 1, !tbaa !90
  %i.qb = load i8, ptr %.1151255.i, align 1, !tbaa !90
  %i.qc = getelementptr inbounds nuw i8, ptr %.11253.i, i64 1
  store i8 %i.qb, ptr %i.qc, align 1, !tbaa !90
  %i.qd = getelementptr inbounds nuw i8, ptr %.11253.i, i64 2
  %i.qe = getelementptr inbounds nuw i8, ptr %.1153254.i, i64 1
  %i.qf = getelementptr inbounds nuw i8, ptr %.1151255.i, i64 1
  %i.qg = load i8, ptr %i.qe, align 1, !tbaa !90
  store i8 %i.qg, ptr %i.qd, align 1, !tbaa !90
  %i.qh = load i8, ptr %i.qf, align 1, !tbaa !90
  %i.qi = getelementptr inbounds nuw i8, ptr %.11253.i, i64 3
  store i8 %i.qh, ptr %i.qi, align 1, !tbaa !90
  %i.qj = getelementptr inbounds nuw i8, ptr %.11253.i, i64 4
  %i.qk = getelementptr inbounds nuw i8, ptr %.1153254.i, i64 2
end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/innerproduct_x86_avx512?download=true
inline.NumInlined: 33
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN4ncnn23InnerProduct_x86_avx51221create_pipeline_bf16sERKNS_6OptionE:bb.a
  %.0462940.i = phi ptr [ %i.abd, %.lr.ph944.i ], [ %i.wt, %bb.ae ] ; 2 uses
  %.0465939.i = phi ptr [ %i.abc, %.lr.ph944.i ], [ %i.wq, %bb.ae ] ; 2 uses
  %.0468938.i = phi ptr [ %i.abb, %.lr.ph944.i ], [ %i.wn, %bb.ae ] ; 2 uses
  %.0471937.i = phi ptr [ %i.aba, %.lr.ph944.i ], [ %i.wk, %bb.ae ] ; 2 uses
  %.0474936.i = phi ptr [ %i.aaz, %.lr.ph944.i ], [ %i.wh, %bb.ae ] ; 2 uses
  %.0477935.i = phi ptr [ %i.aay, %.lr.ph944.i ], [ %i.we, %bb.ae ] ; 2 uses
  %.0480934.i = phi ptr [ %i.aax, %.lr.ph944.i ], [ %i.wb, %bb.ae ] ; 2 uses
  %.0483933.i = phi ptr [ %i.abf, %.lr.ph944.i ], [ %i.vu, %bb.ae ] ; 9 uses
  %i.wy = load <16 x i32>, ptr %.0480934.i, align 1, !tbaa !50
  %i.wz = lshr <16 x i32> %i.wy, splat (i32 16)   ; 2 uses
  %i.xa = shufflevector <16 x i32> %i.wz, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.xb = shufflevector <16 x i32> %i.wz, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.xc = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.xa, <8 x i32> %i.xb)
  %i.xd = bitcast <16 x i16> %i.xc to <4 x i64>
  %i.xe = shufflevector <4 x i64> %i.xd, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.xf = load <16 x i32>, ptr %.0477935.i, align 1, !tbaa !50
  %i.xg = lshr <16 x i32> %i.xf, splat (i32 16)   ; 2 uses
  %i.xh = shufflevector <16 x i32> %i.xg, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.xi = shufflevector <16 x i32> %i.xg, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.xj = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.xh, <8 x i32> %i.xi)
  %i.xk = bitcast <16 x i16> %i.xj to <4 x i64>
  %i.xl = shufflevector <4 x i64> %i.xk, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.xm = load <16 x i32>, ptr %.0474936.i, align 1, !tbaa !50
  %i.xn = lshr <16 x i32> %i.xm, splat (i32 16)   ; 2 uses
  %i.xo = shufflevector <16 x i32> %i.xn, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.xp = shufflevector <16 x i32> %i.xn, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.xq = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.xo, <8 x i32> %i.xp)
  %i.xr = bitcast <16 x i16> %i.xq to <4 x i64>
  %i.xs = shufflevector <4 x i64> %i.xr, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.xt = load <16 x i32>, ptr %.0471937.i, align 1, !tbaa !50
  %i.xu = lshr <16 x i32> %i.xt, splat (i32 16)   ; 2 uses
  %i.xv = shufflevector <16 x i32> %i.xu, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.xw = shufflevector <16 x i32> %i.xu, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.xx = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.xv, <8 x i32> %i.xw)
  %i.xy = bitcast <16 x i16> %i.xx to <4 x i64>
  %i.xz = shufflevector <4 x i64> %i.xy, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ya = load <16 x i32>, ptr %.0468938.i, align 1, !tbaa !50
  %i.yb = lshr <16 x i32> %i.ya, splat (i32 16)   ; 2 uses
  %i.yc = shufflevector <16 x i32> %i.yb, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.yd = shufflevector <16 x i32> %i.yb, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ye = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.yc, <8 x i32> %i.yd)
  %i.yf = bitcast <16 x i16> %i.ye to <4 x i64>
  %i.yg = shufflevector <4 x i64> %i.yf, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.yh = load <16 x i32>, ptr %.0465939.i, align 1, !tbaa !50
  %i.yi = lshr <16 x i32> %i.yh, splat (i32 16)   ; 2 uses
  %i.yj = shufflevector <16 x i32> %i.yi, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.yk = shufflevector <16 x i32> %i.yi, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yl = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.yj, <8 x i32> %i.yk)
  %i.ym = bitcast <16 x i16> %i.yl to <4 x i64>
  %i.yn = shufflevector <4 x i64> %i.ym, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.yo = load <16 x i32>, ptr %.0462940.i, align 1, !tbaa !50
  %i.yp = lshr <16 x i32> %i.yo, splat (i32 16)   ; 2 uses
  %i.yq = shufflevector <16 x i32> %i.yp, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.yr = shufflevector <16 x i32> %i.yp, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ys = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.yq, <8 x i32> %i.yr)
  %i.yt = bitcast <16 x i16> %i.ys to <4 x i64>
  %i.yu = shufflevector <4 x i64> %i.yt, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.yv = load <16 x i32>, ptr %.0459941.i, align 1, !tbaa !50
  %i.yw = lshr <16 x i32> %i.yv, splat (i32 16)   ; 2 uses
  %i.yx = shufflevector <16 x i32> %i.yw, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.yy = shufflevector <16 x i32> %i.yw, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yz = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.yx, <8 x i32> %i.yy)
  %i.za = bitcast <16 x i16> %i.yz to <4 x i64>
  %i.zb = shufflevector <4 x i64> %i.za, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.zc = bitcast <4 x i64> %i.xe to <16 x i16>   ; 2 uses
  %i.zd = bitcast <4 x i64> %i.xl to <16 x i16>   ; 2 uses
  %i.ze = shufflevector <16 x i16> %i.zc, <16 x i16> %i.zd, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27>
  %i.zf = shufflevector <16 x i16> %i.zc, <16 x i16> %i.zd, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.zg = bitcast <4 x i64> %i.xs to <16 x i16>   ; 2 uses
  %i.zh = bitcast <4 x i64> %i.xz to <16 x i16>   ; 2 uses
  %i.zi = shufflevector <16 x i16> %i.zg, <16 x i16> %i.zh, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27>
  %i.zj = shufflevector <16 x i16> %i.zg, <16 x i16> %i.zh, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.zk = bitcast <4 x i64> %i.yg to <16 x i16>   ; 2 uses
  %i.zl = bitcast <4 x i64> %i.yn to <16 x i16>   ; 2 uses
  %i.zm = shufflevector <16 x i16> %i.zk, <16 x i16> %i.zl, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27>
  %i.zn = shufflevector <16 x i16> %i.zk, <16 x i16> %i.zl, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.zo = bitcast <4 x i64> %i.yu to <16 x i16>   ; 2 uses
  %i.zp = bitcast <4 x i64> %i.zb to <16 x i16>   ; 2 uses
  %i.zq = shufflevector <16 x i16> %i.zo, <16 x i16> %i.zp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27>
  %i.zr = shufflevector <16 x i16> %i.zo, <16 x i16> %i.zp, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.zs = bitcast <16 x i16> %i.ze to <8 x i32>   ; 2 uses
  %i.zt = bitcast <16 x i16> %i.zi to <8 x i32>   ; 2 uses
  %i.zu = shufflevector <8 x i32> %i.zs, <8 x i32> %i.zt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.zv = shufflevector <8 x i32> %i.zs, <8 x i32> %i.zt, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.zw = bitcast <16 x i16> %i.zf to <8 x i32>   ; 2 uses
  %i.zx = bitcast <16 x i16> %i.zj to <8 x i32>   ; 2 uses
  %i.zy = shufflevector <8 x i32> %i.zw, <8 x i32> %i.zx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.zz = shufflevector <8 x i32> %i.zw, <8 x i32> %i.zx, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aaa = bitcast <16 x i16> %i.zm to <8 x i32>  ; 2 uses
  %i.aab = bitcast <16 x i16> %i.zq to <8 x i32>  ; 2 uses
  %i.aac = shufflevector <8 x i32> %i.aaa, <8 x i32> %i.aab, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aad = shufflevector <8 x i32> %i.aaa, <8 x i32> %i.aab, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aae = bitcast <16 x i16> %i.zn to <8 x i32>  ; 2 uses
  %i.aaf = bitcast <16 x i16> %i.zr to <8 x i32>  ; 2 uses
  %i.aag = shufflevector <8 x i32> %i.aae, <8 x i32> %i.aaf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.aah = shufflevector <8 x i32> %i.aae, <8 x i32> %i.aaf, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aai = shufflevector <8 x i32> %i.zu, <8 x i32> %i.aac, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.aaj = shufflevector <8 x i32> %i.zv, <8 x i32> %i.aad, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.aak = shufflevector <8 x i32> %i.zy, <8 x i32> %i.aag, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.aal = shufflevector <8 x i32> %i.zz, <8 x i32> %i.aah, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.aam = shufflevector <8 x i32> %i.zu, <8 x i32> %i.aac, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.aan = shufflevector <8 x i32> %i.zv, <8 x i32> %i.aad, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.aao = shufflevector <8 x i32> %i.zy, <8 x i32> %i.aag, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.aap = shufflevector <8 x i32> %i.zz, <8 x i32> %i.aah, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  store <8 x i32> %i.aai, ptr %.0483933.i, align 1, !tbaa !50
  %i.aaq = getelementptr inbounds nuw i8, ptr %.0483933.i, i64 32
  store <8 x i32> %i.aaj, ptr %i.aaq, align 1, !tbaa !50
  %i.aar = getelementptr inbounds nuw i8, ptr %.0483933.i, i64 64
  store <8 x i32> %i.aak, ptr %i.aar, align 1, !tbaa !50
  %i.aas = getelementptr inbounds nuw i8, ptr %.0483933.i, i64 96
  store <8 x i32> %i.aal, ptr %i.aas, align 1, !tbaa !50
  %i.aat = getelementptr inbounds nuw i8, ptr %.0483933.i, i64 128
  store <8 x i32> %i.aam, ptr %i.aat, align 1, !tbaa !50
  %i.aau = getelementptr inbounds nuw i8, ptr %.0483933.i, i64 160
  store <8 x i32> %i.aan, ptr %i.aau, align 1, !tbaa !50
  %i.aav = getelementptr inbounds nuw i8, ptr %.0483933.i, i64 192
  store <8 x i32> %i.aao, ptr %i.aav, align 1, !tbaa !50
  %i.aaw = getelementptr inbounds nuw i8, ptr %.0483933.i, i64 224
  store <8 x i32> %i.aap, ptr %i.aaw, align 1, !tbaa !50
  %i.aax = getelementptr inbounds nuw i8, ptr %.0480934.i, i64 64 ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %.0477935.i, i64 64 ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %.0474936.i, i64 64 ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %.0471937.i, i64 64 ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %.0468938.i, i64 64 ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %.0465939.i, i64 64 ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %.0462940.i, i64 64 ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %.0459941.i, i64 64 ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %.0483933.i, i64 256 ; 2 uses
  %i.abg = add nuw nsw i32 %.0456942.i, 16        ; 2 uses
  %i.abh = or disjoint i32 %i.abg, 15
  %i.abi = icmp slt i32 %i.abh, %i.e
  br i1 %i.abi, label %.lr.ph944.i, label %.preheader834.i, !llvm.loop !178

.preheader833.i:                                  ; preds = %.lr.ph965.i, %.preheader834.i
  %.1484.lcssa.i = phi ptr [ %.0483.lcssa.i, %.preheader834.i ], [ %i.agr, %.lr.ph965.i ] ; 5 uses
  %.1481.lcssa.i = phi ptr [ %.0480.lcssa.i, %.preheader834.i ], [ %i.agj, %.lr.ph965.i ] ; 5 uses
  %.1478.lcssa.i = phi ptr [ %.0477.lcssa.i, %.preheader834.i ], [ %i.agk, %.lr.ph965.i ] ; 5 uses
  %.1475.lcssa.i = phi ptr [ %.0474.lcssa.i, %.preheader834.i ], [ %i.agl, %.lr.ph965.i ] ; 5 uses
  %.1472.lcssa.i = phi ptr [ %.0471.lcssa.i, %.preheader834.i ], [ %i.agm, %.lr.ph965.i ] ; 5 uses
  %.1469.lcssa.i = phi ptr [ %.0468.lcssa.i, %.preheader834.i ], [ %i.agn, %.lr.ph965.i ] ; 5 uses
  %.1466.lcssa.i = phi ptr [ %.0465.lcssa.i, %.preheader834.i ], [ %i.ago, %.lr.ph965.i ] ; 5 uses
  %.1463.lcssa.i = phi ptr [ %.0462.lcssa.i, %.preheader834.i ], [ %i.agp, %.lr.ph965.i ] ; 5 uses
  %.1460.lcssa.i = phi ptr [ %.0459.lcssa.i, %.preheader834.i ], [ %i.agq, %.lr.ph965.i ] ; 5 uses
  %.1457.lcssa.i = phi i32 [ %.0456.lcssa.i, %.preheader834.i ], [ %i.ags, %.lr.ph965.i ] ; 5 uses
  %i.abj = icmp slt i32 %.1457.lcssa.i, %i.e
  br i1 %i.abj, label %iter.check, label %._crit_edge987.i

iter.check:                                       ; preds = %.preheader833.i
  %i.abk = xor i32 %.1457.lcssa.i, -1
  %i.abl = add i32 %i.e, %i.abk                   ; 3 uses
  %i.abm = zext i32 %i.abl to i64
  %i.abn = add nuw nsw i64 %i.abm, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.abl, 3
  br i1 %min.iters.check, label %.lr.ph986.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check276 = icmp ult i32 %i.abl, 15
  br i1 %min.iters.check276, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.abo = and i64 %i.abn, 12
  %n.vec = and i64 %i.abn, 8589934576             ; 6 uses
  %i.abp = trunc i64 %n.vec to i32
  %i.abq = add i32 %.1457.lcssa.i, %i.abp
  %i.abr = shl nuw nsw i64 %n.vec, 2              ; 8 uses
  %i.abs = getelementptr i8, ptr %.1460.lcssa.i, i64 %i.abr
  %i.abt = getelementptr i8, ptr %.1463.lcssa.i, i64 %i.abr
  %i.abu = getelementptr i8, ptr %.1466.lcssa.i, i64 %i.abr
  %i.abv = getelementptr i8, ptr %.1469.lcssa.i, i64 %i.abr
  %i.abw = getelementptr i8, ptr %.1472.lcssa.i, i64 %i.abr
  %i.abx = getelementptr i8, ptr %.1475.lcssa.i, i64 %i.abr
  %i.aby = getelementptr i8, ptr %.1478.lcssa.i, i64 %i.abr
  %i.abz = getelementptr i8, ptr %.1481.lcssa.i, i64 %i.abr
  %i.aca = shl nuw nsw i64 %n.vec, 4
  %i.acb = getelementptr i8, ptr %.1484.lcssa.i, i64 %i.aca
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.acc = shl i64 %index, 2                      ; 8 uses
  %next.gep = getelementptr i8, ptr %.1460.lcssa.i, i64 %i.acc
  %next.gep277 = getelementptr i8, ptr %.1463.lcssa.i, i64 %i.acc
  %next.gep278 = getelementptr i8, ptr %.1466.lcssa.i, i64 %i.acc
  %next.gep279 = getelementptr i8, ptr %.1469.lcssa.i, i64 %i.acc
  %next.gep280 = getelementptr i8, ptr %.1472.lcssa.i, i64 %i.acc
  %next.gep281 = getelementptr i8, ptr %.1475.lcssa.i, i64 %i.acc
  %next.gep282 = getelementptr i8, ptr %.1478.lcssa.i, i64 %i.acc
  %next.gep283 = getelementptr i8, ptr %.1481.lcssa.i, i64 %i.acc
  %i.acd = shl i64 %index, 4
  %next.gep284 = getelementptr i8, ptr %.1484.lcssa.i, i64 %i.acd
  %wide.load = load <16 x i32>, ptr %next.gep283, align 4, !tbaa !53
  %wide.load285 = load <16 x i32>, ptr %next.gep282, align 4, !tbaa !53
  %wide.load286 = load <16 x i32>, ptr %next.gep281, align 4, !tbaa !53
  %wide.load287 = load <16 x i32>, ptr %next.gep280, align 4, !tbaa !53
  %wide.load288 = load <16 x i32>, ptr %next.gep279, align 4, !tbaa !53
  %wide.load289 = load <16 x i32>, ptr %next.gep278, align 4, !tbaa !53
  %wide.load290 = load <16 x i32>, ptr %next.gep277, align 4, !tbaa !53
  %wide.load291 = load <16 x i32>, ptr %next.gep, align 4, !tbaa !53
  %i.ace = shufflevector <16 x i32> %wide.load, <16 x i32> %wide.load285, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.acf = shufflevector <16 x i32> %wide.load286, <16 x i32> %wide.load287, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %6 = shufflevector <32 x i32> %i.ace, <32 x i32> %i.acf, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %7 = lshr <64 x i32> %6, splat (i32 16)
  %8 = trunc nuw <64 x i32> %7 to <64 x i16>
  %9 = shufflevector <16 x i32> %wide.load288, <16 x i32> %wide.load289, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %10 = shufflevector <16 x i32> %wide.load290, <16 x i32> %wide.load291, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.acg = shufflevector <32 x i32> %9, <32 x i32> %10, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ach = lshr <64 x i32> %i.acg, splat (i32 16)
  %i.aci = trunc nuw <64 x i32> %i.ach to <64 x i16>
  %interleaved.vec = shufflevector <64 x i16> %8, <64 x i16> %i.aci, <128 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 96, i32 112, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 97, i32 113, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 98, i32 114, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 99, i32 115, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 100, i32 116, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 101, i32 117, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 102, i32 118, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 103, i32 119, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 104, i32 120, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 105, i32 121, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 106, i32 122, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 107, i32 123, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 108, i32 124, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 109, i32 125, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 110, i32 126, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95, i32 111, i32 127>
  store <128 x i16> %interleaved.vec, ptr %next.gep284, align 2, !tbaa !74
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.acj = icmp eq i64 %index.next, %n.vec
  br i1 %i.acj, label %middle.block, label %vector.body, !llvm.loop !179

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.abn, %n.vec
  br i1 %cmp.n, label %._crit_edge987.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.abo, 0
  br i1 %min.epilog.iters.check, label %.lr.ph986.i.preheader, label %vec.epilog.ph, !prof !56

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec301 = and i64 %i.abn, 8589934588          ; 5 uses
  %i.ack = trunc i64 %n.vec301 to i32
  %i.acl = add i32 %.1457.lcssa.i, %i.ack
  %i.acm = shl nuw nsw i64 %n.vec301, 2           ; 8 uses
  %i.acn = getelementptr i8, ptr %.1460.lcssa.i, i64 %i.acm
  %i.aco = getelementptr i8, ptr %.1463.lcssa.i, i64 %i.acm
  %i.acp = getelementptr i8, ptr %.1466.lcssa.i, i64 %i.acm
  %i.acq = getelementptr i8, ptr %.1469.lcssa.i, i64 %i.acm
  %i.acr = getelementptr i8, ptr %.1472.lcssa.i, i64 %i.acm
  %i.acs = getelementptr i8, ptr %.1475.lcssa.i, i64 %i.acm
  %i.act = getelementptr i8, ptr %.1478.lcssa.i, i64 %i.acm
  %i.acu = getelementptr i8, ptr %.1481.lcssa.i, i64 %i.acm
  %i.acv = shl nuw nsw i64 %n.vec301, 4
  %i.acw = getelementptr i8, ptr %.1484.lcssa.i, i64 %i.acv
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index302 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next321, %vec.epilog.vector.body ] ; 3 uses
  %i.acx = shl i64 %index302, 2                   ; 8 uses
  %next.gep303 = getelementptr i8, ptr %.1460.lcssa.i, i64 %i.acx
  %next.gep304 = getelementptr i8, ptr %.1463.lcssa.i, i64 %i.acx
  %next.gep305 = getelementptr i8, ptr %.1466.lcssa.i, i64 %i.acx
  %next.gep306 = getelementptr i8, ptr %.1469.lcssa.i, i64 %i.acx
  %next.gep307 = getelementptr i8, ptr %.1472.lcssa.i, i64 %i.acx
  %next.gep308 = getelementptr i8, ptr %.1475.lcssa.i, i64 %i.acx
  %next.gep309 = getelementptr i8, ptr %.1478.lcssa.i, i64 %i.acx
  %next.gep310 = getelementptr i8, ptr %.1481.lcssa.i, i64 %i.acx
  %i.acy = shl i64 %index302, 4
  %next.gep311 = getelementptr i8, ptr %.1484.lcssa.i, i64 %i.acy
  %wide.load312 = load <4 x i32>, ptr %next.gep310, align 4, !tbaa !53
  %wide.load313 = load <4 x i32>, ptr %next.gep309, align 4, !tbaa !53
  %wide.load314 = load <4 x i32>, ptr %next.gep308, align 4, !tbaa !53
  %wide.load315 = load <4 x i32>, ptr %next.gep307, align 4, !tbaa !53
  %wide.load316 = load <4 x i32>, ptr %next.gep306, align 4, !tbaa !53
  %wide.load317 = load <4 x i32>, ptr %next.gep305, align 4, !tbaa !53
  %wide.load318 = load <4 x i32>, ptr %next.gep304, align 4, !tbaa !53
  %wide.load319 = load <4 x i32>, ptr %next.gep303, align 4, !tbaa !53
  %i.acz = shufflevector <4 x i32> %wide.load312, <4 x i32> %wide.load313, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ada = shufflevector <4 x i32> %wide.load314, <4 x i32> %wide.load315, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.adb = shufflevector <4 x i32> %wide.load316, <4 x i32> %wide.load317, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.adc = shufflevector <4 x i32> %wide.load318, <4 x i32> %wide.load319, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.add = shufflevector <8 x i32> %i.acz, <8 x i32> %i.ada, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ade = shufflevector <8 x i32> %i.adb, <8 x i32> %i.adc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.adf = shufflevector <16 x i32> %i.add, <16 x i32> %i.ade, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.adg = lshr <32 x i32> %i.adf, splat (i32 16)
  %interleaved.vec320 = trunc nuw <32 x i32> %i.adg to <32 x i16>
  store <32 x i16> %interleaved.vec320, ptr %next.gep311, align 2, !tbaa !74
  %index.next321 = add nuw i64 %index302, 4       ; 2 uses
  %i.adh = icmp eq i64 %index.next321, %n.vec301
  br i1 %i.adh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !180

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n322 = icmp eq i64 %i.abn, %n.vec301
  br i1 %cmp.n322, label %._crit_edge987.i, label %.lr.ph986.i.preheader

.lr.ph986.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2458985.i.ph = phi i32 [ %.1457.lcssa.i, %iter.check ], [ %i.abq, %vec.epilog.iter.check ], [ %i.acl, %vec.epilog.middle.block ]
  %.2461984.i.ph = phi ptr [ %.1460.lcssa.i, %iter.check ], [ %i.abs, %vec.epilog.iter.check ], [ %i.acn, %vec.epilog.middle.block ]
  %.2464983.i.ph = phi ptr [ %.1463.lcssa.i, %iter.check ], [ %i.abt, %vec.epilog.iter.check ], [ %i.aco, %vec.epilog.middle.block ]
  %.2467982.i.ph = phi ptr [ %.1466.lcssa.i, %iter.check ], [ %i.abu, %vec.epilog.iter.check ], [ %i.acp, %vec.epilog.middle.block ]
  %.2470981.i.ph = phi ptr [ %.1469.lcssa.i, %iter.check ], [ %i.abv, %vec.epilog.iter.check ], [ %i.acq, %vec.epilog.middle.block ]
  %.2473980.i.ph = phi ptr [ %.1472.lcssa.i, %iter.check ], [ %i.abw, %vec.epilog.iter.check ], [ %i.acr, %vec.epilog.middle.block ]
  %.2476979.i.ph = phi ptr [ %.1475.lcssa.i, %iter.check ], [ %i.abx, %vec.epilog.iter.check ], [ %i.acs, %vec.epilog.middle.block ]
  %.2479978.i.ph = phi ptr [ %.1478.lcssa.i, %iter.check ], [ %i.aby, %vec.epilog.iter.check ], [ %i.act, %vec.epilog.middle.block ]
  %.2482977.i.ph = phi ptr [ %.1481.lcssa.i, %iter.check ], [ %i.abz, %vec.epilog.iter.check ], [ %i.acu, %vec.epilog.middle.block ]
  %.2485976.i.ph = phi ptr [ %.1484.lcssa.i, %iter.check ], [ %i.acb, %vec.epilog.iter.check ], [ %i.acw, %vec.epilog.middle.block ]
  br label %.lr.ph986.i

.lr.ph965.i:                                      ; preds = %.preheader834.i, %.lr.ph965.i
  %.1457964.i = phi i32 [ %i.ags, %.lr.ph965.i ], [ %.0456.lcssa.i, %.preheader834.i ]
  %.1460963.i = phi ptr [ %i.agq, %.lr.ph965.i ], [ %.0459.lcssa.i, %.preheader834.i ] ; 2 uses
  %.1463962.i = phi ptr [ %i.agp, %.lr.ph965.i ], [ %.0462.lcssa.i, %.preheader834.i ] ; 2 uses
  %.1466961.i = phi ptr [ %i.ago, %.lr.ph965.i ], [ %.0465.lcssa.i, %.preheader834.i ] ; 2 uses
  %.1469960.i = phi ptr [ %i.agn, %.lr.ph965.i ], [ %.0468.lcssa.i, %.preheader834.i ] ; 2 uses
  %.1472959.i = phi ptr [ %i.agm, %.lr.ph965.i ], [ %.0471.lcssa.i, %.preheader834.i ] ; 2 uses
  %.1475958.i = phi ptr [ %i.agl, %.lr.ph965.i ], [ %.0474.lcssa.i, %.preheader834.i ] ; 2 uses
  %.1478957.i = phi ptr [ %i.agk, %.lr.ph965.i ], [ %.0477.lcssa.i, %.preheader834.i ] ; 2 uses
  %.1481956.i = phi ptr [ %i.agj, %.lr.ph965.i ], [ %.0480.lcssa.i, %.preheader834.i ] ; 2 uses
  %.1484955.i = phi ptr [ %i.agr, %.lr.ph965.i ], [ %.0483.lcssa.i, %.preheader834.i ] ; 9 uses
  %i.adi = load <8 x i32>, ptr %.1481956.i, align 1, !tbaa !50
  %i.adj = lshr <8 x i32> %i.adi, splat (i32 16)  ; 2 uses
  %i.adk = shufflevector <8 x i32> %i.adj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.adl = shufflevector <8 x i32> %i.adj, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.adm = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.adk, <4 x i32> %i.adl) ; 2 uses
  %i.adn = load <8 x i32>, ptr %.1478957.i, align 1, !tbaa !50
  %i.ado = lshr <8 x i32> %i.adn, splat (i32 16)  ; 2 uses
  %i.adp = shufflevector <8 x i32> %i.ado, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.adq = shufflevector <8 x i32> %i.ado, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.adr = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.adp, <4 x i32> %i.adq) ; 2 uses
  %i.ads = load <8 x i32>, ptr %.1475958.i, align 1, !tbaa !50
  %i.adt = lshr <8 x i32> %i.ads, splat (i32 16)  ; 2 uses
  %i.adu = shufflevector <8 x i32> %i.adt, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.adv = shufflevector <8 x i32> %i.adt, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.adw = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.adu, <4 x i32> %i.adv) ; 2 uses
  %i.adx = load <8 x i32>, ptr %.1472959.i, align 1, !tbaa !50
  %i.ady = lshr <8 x i32> %i.adx, splat (i32 16)  ; 2 uses
  %i.adz = shufflevector <8 x i32> %i.ady, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aea = shufflevector <8 x i32> %i.ady, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aeb = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.adz, <4 x i32> %i.aea) ; 2 uses
  %i.aec = load <8 x i32>, ptr %.1469960.i, align 1, !tbaa !50
  %i.aed = lshr <8 x i32> %i.aec, splat (i32 16)  ; 2 uses
  %i.aee = shufflevector <8 x i32> %i.aed, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aef = shufflevector <8 x i32> %i.aed, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aeg = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.aee, <4 x i32> %i.aef) ; 2 uses
  %i.aeh = load <8 x i32>, ptr %.1466961.i, align 1, !tbaa !50
  %i.aei = lshr <8 x i32> %i.aeh, splat (i32 16)  ; 2 uses
  %i.aej = shufflevector <8 x i32> %i.aei, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aek = shufflevector <8 x i32> %i.aei, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ael = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.aej, <4 x i32> %i.aek) ; 2 uses
  %i.aem = load <8 x i32>, ptr %.1463962.i, align 1, !tbaa !50
  %i.aen = lshr <8 x i32> %i.aem, splat (i32 16)  ; 2 uses
  %i.aeo = shufflevector <8 x i32> %i.aen, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aep = shufflevector <8 x i32> %i.aen, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aeq = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.aeo, <4 x i32> %i.aep) ; 2 uses
  %i.aer = load <8 x i32>, ptr %.1460963.i, align 1, !tbaa !50
  %i.aes = lshr <8 x i32> %i.aer, splat (i32 16)  ; 2 uses
  %i.aet = shufflevector <8 x i32> %i.aes, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aeu = shufflevector <8 x i32> %i.aes, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aev = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.aet, <4 x i32> %i.aeu) ; 2 uses
  %i.aew = shufflevector <8 x i16> %i.adm, <8 x i16> %i.adr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aex = shufflevector <8 x i16> %i.adm, <8 x i16> %i.adr, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.aey = shufflevector <8 x i16> %i.adw, <8 x i16> %i.aeb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aez = shufflevector <8 x i16> %i.adw, <8 x i16> %i.aeb, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.afa = shufflevector <8 x i16> %i.aeg, <8 x i16> %i.ael, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.afb = shufflevector <8 x i16> %i.aeg, <8 x i16> %i.ael, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.afc = shufflevector <8 x i16> %i.aeq, <8 x i16> %i.aev, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.afd = shufflevector <8 x i16> %i.aeq, <8 x i16> %i.aev, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.afe = bitcast <8 x i16> %i.aew to <4 x i32>  ; 2 uses
  %i.aff = bitcast <8 x i16> %i.aey to <4 x i32>  ; 2 uses
  %i.afg = shufflevector <4 x i32> %i.afe, <4 x i32> %i.aff, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.afh = shufflevector <4 x i32> %i.afe, <4 x i32> %i.aff, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.afi = bitcast <8 x i16> %i.aex to <4 x i32>  ; 2 uses
  %i.afj = bitcast <8 x i16> %i.aez to <4 x i32>  ; 2 uses
  %i.afk = shufflevector <4 x i32> %i.afi, <4 x i32> %i.afj, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.afl = shufflevector <4 x i32> %i.afi, <4 x i32> %i.afj, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.afm = bitcast <8 x i16> %i.afa to <4 x i32>  ; 2 uses
  %i.afn = bitcast <8 x i16> %i.afc to <4 x i32>  ; 2 uses
  %i.afo = shufflevector <4 x i32> %i.afm, <4 x i32> %i.afn, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.afp = shufflevector <4 x i32> %i.afm, <4 x i32> %i.afn, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.afq = bitcast <8 x i16> %i.afb to <4 x i32>  ; 2 uses
  %i.afr = bitcast <8 x i16> %i.afd to <4 x i32>  ; 2 uses
  %i.afs = shufflevector <4 x i32> %i.afq, <4 x i32> %i.afr, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aft = shufflevector <4 x i32> %i.afq, <4 x i32> %i.afr, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.afu = shufflevector <4 x i32> %i.afg, <4 x i32> %i.afo, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.afv = shufflevector <4 x i32> %i.afg, <4 x i32> %i.afo, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.afw = shufflevector <4 x i32> %i.afh, <4 x i32> %i.afp, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.afx = shufflevector <4 x i32> %i.afh, <4 x i32> %i.afp, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.afy = shufflevector <4 x i32> %i.afk, <4 x i32> %i.afs, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.afz = shufflevector <4 x i32> %i.afk, <4 x i32> %i.afs, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.aga = shufflevector <4 x i32> %i.afl, <4 x i32> %i.aft, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.agb = shufflevector <4 x i32> %i.afl, <4 x i32> %i.aft, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  store <4 x i32> %i.afu, ptr %.1484955.i, align 1, !tbaa !50
  %i.agc = getelementptr inbounds nuw i8, ptr %.1484955.i, i64 16
  store <4 x i32> %i.afv, ptr %i.agc, align 1, !tbaa !50
  %i.agd = getelementptr inbounds nuw i8, ptr %.1484955.i, i64 32
  store <4 x i32> %i.afw, ptr %i.agd, align 1, !tbaa !50
  %i.age = getelementptr inbounds nuw i8, ptr %.1484955.i, i64 48
  store <4 x i32> %i.afx, ptr %i.age, align 1, !tbaa !50
  %i.agf = getelementptr inbounds nuw i8, ptr %.1484955.i, i64 64
  store <4 x i32> %i.afy, ptr %i.agf, align 1, !tbaa !50
  %i.agg = getelementptr inbounds nuw i8, ptr %.1484955.i, i64 80
  store <4 x i32> %i.afz, ptr %i.agg, align 1, !tbaa !50
  %i.agh = getelementptr inbounds nuw i8, ptr %.1484955.i, i64 96
  store <4 x i32> %i.aga, ptr %i.agh, align 1, !tbaa !50
  %i.agi = getelementptr inbounds nuw i8, ptr %.1484955.i, i64 112
  store <4 x i32> %i.agb, ptr %i.agi, align 1, !tbaa !50
  %i.agj = getelementptr inbounds nuw i8, ptr %.1481956.i, i64 32 ; 2 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %.1478957.i, i64 32 ; 2 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %.1475958.i, i64 32 ; 2 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %.1472959.i, i64 32 ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %.1469960.i, i64 32 ; 2 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %.1466961.i, i64 32 ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %.1463962.i, i64 32 ; 2 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %.1460963.i, i64 32 ; 2 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %.1484955.i, i64 128 ; 2 uses
  %i.ags = add nuw nsw i32 %.1457964.i, 8         ; 3 uses
  %i.agt = or disjoint i32 %i.ags, 7
  %i.agu = icmp slt i32 %i.agt, %i.e
  br i1 %i.agu, label %.lr.ph965.i, label %.preheader833.i, !llvm.loop !181

.lr.ph986.i:                                      ; preds = %.lr.ph986.i.preheader, %.lr.ph986.i
  %.2458985.i = phi i32 [ %i.ahw, %.lr.ph986.i ], [ %.2458985.i.ph, %.lr.ph986.i.preheader ]
  %.2461984.i = phi ptr [ %i.ahj, %.lr.ph986.i ], [ %.2461984.i.ph, %.lr.ph986.i.preheader ] ; 2 uses
  %.2464983.i = phi ptr [ %i.ahh, %.lr.ph986.i ], [ %.2464983.i.ph, %.lr.ph986.i.preheader ] ; 2 uses
  %.2467982.i = phi ptr [ %i.ahf, %.lr.ph986.i ], [ %.2467982.i.ph, %.lr.ph986.i.preheader ] ; 2 uses
end_hunk_0

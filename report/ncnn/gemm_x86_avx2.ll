Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx2?download=true
inline.NumInlined: 22
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN4ncnn29pack_A_tile_fp32_to_int8_avx2ERKNS_3MatERS0_iiiiS2_:bb.a
  %.4.lcssa.i = phi ptr [ %.0278426.i, %.preheader385.i ], [ %i.jl, %.lr.ph403.i ] ; 2 uses
  %i.im = icmp slt i32 %.0300.lcssa.i, %5
  br i1 %i.im, label %.lr.ph410.i, label %.loopexit381.i

.lr.ph403.i:                                      ; preds = %.preheader385.i, %.lr.ph403.i
  %.4402.i = phi ptr [ %i.jl, %.lr.ph403.i ], [ %.0278426.i, %.preheader385.i ] ; 2 uses
  %.3287401.i = phi ptr [ %i.jm, %.lr.ph403.i ], [ %i.go, %.preheader385.i ] ; 3 uses
  %.0300400.i = phi i32 [ %i.jn, %.lr.ph403.i ], [ 0, %.preheader385.i ]
  %i.in = load <8 x float>, ptr %.3287401.i, align 1, !tbaa !17 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.3287401.i, i64 %.idx314.i
  %i.ip = load <8 x float>, ptr %i.io, align 1, !tbaa !17 ; 2 uses
  %i.iq = shufflevector <8 x float> %i.in, <8 x float> %i.ip, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ir = shufflevector <8 x float> %i.in, <8 x float> %i.ip, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.is = fmul fast <8 x float> %i.iq, %i.gs      ; 2 uses
  %i.it = fmul fast <8 x float> %i.ir, %i.gs      ; 2 uses
  %i.iu = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.is)
  %i.iv = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.it)
  %i.iw = fadd fast <8 x float> %i.iu, %i.is
  %i.ix = fadd fast <8 x float> %i.iv, %i.it
  %i.iy = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.iw)
  %i.iz = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ix)
  %i.ja = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.iy, <8 x i32> %i.iz)
  %i.jb = bitcast <16 x i16> %i.ja to <4 x i64>
  %i.jc = shufflevector <4 x i64> %i.jb, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.jd = bitcast <4 x i64> %i.jc to <16 x i16>
  %i.je = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.jd, <16 x i16> splat (i16 -127))
  %i.jf = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.je, <16 x i16> splat (i16 127))
  %i.jg = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.jf, <16 x i16> poison)
  %i.jh = bitcast <32 x i8> %i.jg to <8 x i32>
  %i.ji = shufflevector <8 x i32> %i.jh, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jj = bitcast <4 x i32> %i.ji to <16 x i8>
  %i.jk = shufflevector <16 x i8> %i.jj, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %i.jk, ptr %.4402.i, align 1, !tbaa !17
  %i.jl = getelementptr inbounds nuw i8, ptr %.4402.i, i64 16 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.3287401.i, i64 32 ; 2 uses
  %i.jn = add nuw nsw i32 %.0300400.i, 2          ; 2 uses
  %i.jo = or disjoint i32 %i.jn, 1
  %i.jp = icmp slt i32 %i.jo, %5
  br i1 %i.jp, label %.lr.ph403.i, label %.preheader383.i, !llvm.loop !145

.lr.ph410.i:                                      ; preds = %.preheader383.i, %.lr.ph410.i
  %.5409.i = phi ptr [ %i.kh, %.lr.ph410.i ], [ %.4.lcssa.i, %.preheader383.i ] ; 2 uses
  %.4288408.i = phi ptr [ %i.ki, %.lr.ph410.i ], [ %.3287.lcssa.i, %.preheader383.i ] ; 3 uses
  %.1301407.i = phi i32 [ %i.kj, %.lr.ph410.i ], [ %.0300.lcssa.i, %.preheader383.i ]
  %i.jq = load <4 x float>, ptr %.4288408.i, align 16, !tbaa !17
  %i.jr = getelementptr inbounds nuw i8, ptr %.4288408.i, i64 %.idx314.i
  %i.js = load <4 x float>, ptr %i.jr, align 16, !tbaa !17
  %i.jt = shufflevector <4 x float> %i.jq, <4 x float> %i.js, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ju = fmul fast <8 x float> %i.jt, %i.gs      ; 2 uses
  %i.jv = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ju)
  %i.jw = fadd fast <8 x float> %i.jv, %i.ju
  %i.jx = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.jw)
  %i.jy = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.jx, <8 x i32> poison)
  %i.jz = bitcast <16 x i16> %i.jy to <8 x i32>
  %i.ka = shufflevector <8 x i32> %i.jz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.kb = bitcast <4 x i32> %i.ka to <8 x i16>
  %i.kc = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.kb, <8 x i16> splat (i16 -127))
  %i.kd = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.kc, <8 x i16> splat (i16 127))
  %i.ke = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.kd, <8 x i16> poison)
  %i.kf = bitcast <16 x i8> %i.ke to <2 x i64>
  %i.kg = extractelement <2 x i64> %i.kf, i64 0
  store i64 %i.kg, ptr %.5409.i, align 8, !tbaa !27
  %i.kh = getelementptr inbounds nuw i8, ptr %.5409.i, i64 8 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.4288408.i, i64 16
  %i.kj = add nuw nsw i32 %.1301407.i, 1          ; 2 uses
  %exitcond537.not.i = icmp eq i32 %i.kj, %5
  br i1 %exitcond537.not.i, label %.loopexit381.i, label %.lr.ph410.i, !llvm.loop !146

.preheader382.i:                                  ; preds = %bb.i
  br i1 %i.s, label %.lr.ph416.i, label %.preheader380.i

.preheader380.i:                                  ; preds = %.lr.ph416.i, %.preheader382.i
  %.0302.lcssa.i = phi i32 [ 0, %.preheader382.i ], [ %i.x, %.lr.ph416.i ] ; 2 uses
  %.6290.lcssa.i = phi ptr [ %i.go, %.preheader382.i ], [ %i.li, %.lr.ph416.i ]
  %.7.lcssa.i = phi ptr [ %.0278426.i, %.preheader382.i ], [ %i.lh, %.lr.ph416.i ] ; 2 uses
  %i.kk = icmp slt i32 %.0302.lcssa.i, %5
  br i1 %i.kk, label %.lr.ph423.i, label %.loopexit381.i

.lr.ph416.i:                                      ; preds = %.preheader382.i, %.lr.ph416.i
  %.7415.i = phi ptr [ %i.lh, %.lr.ph416.i ], [ %.0278426.i, %.preheader382.i ] ; 2 uses
  %.6290414.i = phi ptr [ %i.li, %.lr.ph416.i ], [ %i.go, %.preheader382.i ] ; 3 uses
  %.0302413.i = phi i32 [ %i.lj, %.lr.ph416.i ], [ 0, %.preheader382.i ]
  %i.kl = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.6290414.i, <8 x i32> %i.w, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.km = getelementptr inbounds nuw i8, ptr %.6290414.i, i64 4
  %i.kn = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.km, <8 x i32> %i.w, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ko = fmul fast <8 x float> %i.kl, %i.gs      ; 2 uses
  %i.kp = fmul fast <8 x float> %i.kn, %i.gs      ; 2 uses
  %i.kq = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ko)
  %i.kr = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.kp)
  %i.ks = fadd fast <8 x float> %i.kq, %i.ko
  %i.kt = fadd fast <8 x float> %i.kr, %i.kp
  %i.ku = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ks)
  %i.kv = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kt)
  %i.kw = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.ku, <8 x i32> %i.kv)
  %i.kx = bitcast <16 x i16> %i.kw to <4 x i64>
  %i.ky = shufflevector <4 x i64> %i.kx, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.kz = bitcast <4 x i64> %i.ky to <16 x i16>
  %i.la = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.kz, <16 x i16> splat (i16 -127))
  %i.lb = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.la, <16 x i16> splat (i16 127))
  %i.lc = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.lb, <16 x i16> poison)
  %i.ld = bitcast <32 x i8> %i.lc to <8 x i32>
  %i.le = shufflevector <8 x i32> %i.ld, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.lf = bitcast <4 x i32> %i.le to <16 x i8>
  %i.lg = shufflevector <16 x i8> %i.lf, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %i.lg, ptr %.7415.i, align 1, !tbaa !17
  %i.lh = getelementptr inbounds nuw i8, ptr %.7415.i, i64 16 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.6290414.i, i64 8 ; 2 uses
  %i.lj = add nuw nsw i32 %.0302413.i, 2          ; 2 uses
  %i.lk = or disjoint i32 %i.lj, 1
  %i.ll = icmp slt i32 %i.lk, %5
  br i1 %i.ll, label %.lr.ph416.i, label %.preheader380.i, !llvm.loop !147

.lr.ph423.i:                                      ; preds = %.preheader380.i, %.lr.ph423.i
  %.8422.i = phi ptr [ %i.ma, %.lr.ph423.i ], [ %.7.lcssa.i, %.preheader380.i ] ; 2 uses
  %.7291421.i = phi ptr [ %i.mb, %.lr.ph423.i ], [ %.6290.lcssa.i, %.preheader380.i ] ; 2 uses
  %.1303420.i = phi i32 [ %i.mc, %.lr.ph423.i ], [ %.0302.lcssa.i, %.preheader380.i ]
  %i.lm = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.7291421.i, <8 x i32> %i.w, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ln = fmul fast <8 x float> %i.lm, %i.gs      ; 2 uses
  %i.lo = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ln)
  %i.lp = fadd fast <8 x float> %i.lo, %i.ln
  %i.lq = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lp)
  %i.lr = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.lq, <8 x i32> poison)
  %i.ls = bitcast <16 x i16> %i.lr to <8 x i32>
  %i.lt = shufflevector <8 x i32> %i.ls, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.lu = bitcast <4 x i32> %i.lt to <8 x i16>
  %i.lv = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.lu, <8 x i16> splat (i16 -127))
  %i.lw = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.lv, <8 x i16> splat (i16 127))
  %i.lx = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.lw, <8 x i16> poison)
  %i.ly = bitcast <16 x i8> %i.lx to <2 x i64>
  %i.lz = extractelement <2 x i64> %i.ly, i64 0
  store i64 %i.lz, ptr %.8422.i, align 8, !tbaa !27
  %i.ma = getelementptr inbounds nuw i8, ptr %.8422.i, i64 8 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.7291421.i, i64 4
  %i.mc = add nuw nsw i32 %.1303420.i, 1          ; 2 uses
  %exitcond538.not.i = icmp eq i32 %i.mc, %5
  br i1 %exitcond538.not.i, label %.loopexit381.i, label %.lr.ph423.i, !llvm.loop !148

.loopexit381.i:                                   ; preds = %.lr.ph423.i, %.lr.ph410.i, %.lr.ph397.i, %.preheader380.i, %.preheader383.i, %.preheader386.i, %bb.i
  %.9.i = phi ptr [ %.0278426.i, %bb.i ], [ %.7.lcssa.i, %.preheader380.i ], [ %i.ij, %.lr.ph397.i ], [ %i.kh, %.lr.ph410.i ], [ %.4.lcssa.i, %.preheader383.i ], [ %.1279.lcssa.i, %.preheader386.i ], [ %i.ma, %.lr.ph423.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.md = or disjoint i64 %indvars.iv.next.i, 7
  %i.me = icmp samesign ult i64 %i.md, %i.y
  br i1 %i.me, label %bb.i, label %.preheader379.loopexit.i, !llvm.loop !149

.preheader372.loopexit.i:                         ; preds = %.loopexit374.i.us37, %.loopexit374.i.us, %.loopexit374.i.preheader
  %.us-phi = phi ptr [ %.0278.lcssa.i, %.loopexit374.i.preheader ], [ %.16.i.us, %.loopexit374.i.us ], [ %.16.i.us38, %.loopexit374.i.us37 ]
  %.us-phi32 = phi i64 [ %i.av, %.loopexit374.i.preheader ], [ %indvars.iv.next543.i.us, %.loopexit374.i.us ], [ %indvars.iv.next543.i.us39, %.loopexit374.i.us37 ]
  %i.mf = trunc nuw nsw i64 %.us-phi32 to i32
  br label %.preheader372.i

.preheader372.i:                                  ; preds = %.preheader372.loopexit.i, %.preheader379.i
  %.1281.lcssa.i = phi i32 [ %.0280.lcssa.i, %.preheader379.i ], [ %i.mf, %.preheader372.loopexit.i ] ; 3 uses
  %.10.lcssa.i = phi ptr [ %.0278.lcssa.i, %.preheader379.i ], [ %.us-phi, %.preheader372.loopexit.i ] ; 2 uses
  %i.mg = or disjoint i32 %.1281.lcssa.i, 1
  %i.mh = icmp slt i32 %i.mg, %3
  br i1 %i.mh, label %.lr.ph481.i, label %.preheader369.i

.lr.ph481.i:                                      ; preds = %.preheader372.i
  %i.mi = sext i32 %4 to i64
  %i.mj = icmp sgt i32 %5, 3
  %i.mk = and i32 %5, -4
  %i.ml = zext nneg i32 %.1281.lcssa.i to i64
  %i.mm = sext i32 %3 to i64
  %i.mn = sext i32 %2 to i64
  %invariant.op594.i = add nsw i64 %i.mm, -1
  %i.mo = shl nuw nsw i64 %i.m, 2                 ; 2 uses
  br label %bb.j

.preheader369.loopexit.i:                         ; preds = %._crit_edge.i
  %i.mp = trunc nuw nsw i64 %indvars.iv.next547.i to i32
  br label %.preheader369.i

.preheader369.i:                                  ; preds = %.preheader369.loopexit.i, %.preheader372.i
  %.2282.lcssa.i = phi i32 [ %.1281.lcssa.i, %.preheader372.i ], [ %i.mp, %.preheader369.loopexit.i ] ; 2 uses
  %.17.lcssa.i = phi ptr [ %.10.lcssa.i, %.preheader372.i ], [ %.20.lcssa.i, %.preheader369.loopexit.i ]
  %i.mq = icmp slt i32 %.2282.lcssa.i, %3
  br i1 %i.mq, label %.lr.ph500.i, label %_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

.lr.ph500.i:                                      ; preds = %.preheader369.i
  %i.mr = sext i32 %4 to i64
  %i.ms = icmp sgt i32 %5, 3
  %i.mt = and i32 %5, -4
  %i.mu = sext i32 %.2282.lcssa.i to i64
  %i.mv = sext i32 %2 to i64
  %wide.trip.count.i = sext i32 %3 to i64
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i, %.lr.ph481.i
  %indvars.iv546.i = phi i64 [ %i.ml, %.lr.ph481.i ], [ %indvars.iv.next547.i, %._crit_edge.i ] ; 2 uses
  %.17480.i = phi ptr [ %.10.lcssa.i, %.lr.ph481.i ], [ %.20.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.mw = load ptr, ptr %0, align 8, !tbaa !14
  %i.mx = add nsw i64 %indvars.iv546.i, %i.mn     ; 2 uses
  %i.my = mul i64 %i.mx, %i.m
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %i.my
  %i.na = getelementptr inbounds [4 x i8], ptr %i.mz, i64 %i.mi ; 2 uses
  %i.nb = load ptr, ptr %6, align 8, !tbaa !14
  %i.nc = getelementptr [4 x i8], ptr %i.nb, i64 %i.mx ; 2 uses
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !30 ; 3 uses
  %i.ne = getelementptr i8, ptr %i.nc, i64 4
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !30 ; 3 uses
  %i.ng = insertelement <4 x float> poison, float %i.nd, i64 0 ; 3 uses
  %i.nh = insertelement <4 x float> poison, float %i.nf, i64 0 ; 3 uses
  %i.ni = shufflevector <4 x float> %i.ng, <4 x float> %i.nh, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  br i1 %i.mj, label %.lr.ph463.i.preheader, label %.preheader371.i

.lr.ph463.i.preheader:                            ; preds = %bb.j
  %7 = shufflevector <4 x float> %i.ng, <4 x float> %i.nh, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  %8 = shufflevector <4 x float> %i.ng, <4 x float> %i.nh, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  br label %.lr.ph463.i

.preheader371.i:                                  ; preds = %.lr.ph463.i, %bb.j
  %.0297.lcssa.i = phi ptr [ %i.na, %bb.j ], [ %i.oc, %.lr.ph463.i ] ; 2 uses
  %.0294.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.mk, %.lr.ph463.i ] ; 3 uses
  %.18.lcssa.i = phi ptr [ %.17480.i, %bb.j ], [ %i.ob, %.lr.ph463.i ] ; 2 uses
  %i.nj = or disjoint i32 %.0294.lcssa.i, 1
  %i.nk = icmp slt i32 %i.nj, %5
  br i1 %i.nk, label %.lr.ph470.i, label %.preheader370.i

.lr.ph463.i:                                      ; preds = %.lr.ph463.i.preheader, %.lr.ph463.i
  %.18462.i = phi ptr [ %i.ob, %.lr.ph463.i ], [ %.17480.i, %.lr.ph463.i.preheader ] ; 2 uses
  %.0294461.i = phi i32 [ %i.od, %.lr.ph463.i ], [ 0, %.lr.ph463.i.preheader ]
  %.0297460.i = phi ptr [ %i.oc, %.lr.ph463.i ], [ %i.na, %.lr.ph463.i.preheader ] ; 3 uses
  %i.nl = load <4 x float>, ptr %.0297460.i, align 1, !tbaa !17 ; 2 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %.0297460.i, i64 %i.m
  %i.nn = load <4 x float>, ptr %i.nm, align 1, !tbaa !17 ; 2 uses
  %9 = shufflevector <4 x float> %i.nl, <4 x float> %i.nn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.no = fmul fast <4 x float> %9, %7            ; 2 uses
  %10 = shufflevector <4 x float> %i.nl, <4 x float> %i.nn, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %11 = fmul fast <4 x float> %10, %8             ; 2 uses
  %i.np = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.no)
  %i.nq = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %11)
  %i.nr = fadd fast <4 x float> %i.np, %i.no
  %i.ns = fadd fast <4 x float> %i.nq, %11
  %i.nt = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nr)
  %i.nu = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ns)
  %i.nv = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.nt, <4 x i32> %i.nu)
  %i.nw = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.nv, <8 x i16> splat (i16 -127))
  %i.nx = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.nw, <8 x i16> splat (i16 127))
  %i.ny = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.nx, <8 x i16> poison)
  %i.nz = bitcast <16 x i8> %i.ny to <2 x i64>
  %i.oa = extractelement <2 x i64> %i.nz, i64 0
  store i64 %i.oa, ptr %.18462.i, align 8, !tbaa !27
  %i.ob = getelementptr inbounds nuw i8, ptr %.18462.i, i64 8 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.0297460.i, i64 16 ; 2 uses
  %i.od = add nuw nsw i32 %.0294461.i, 4          ; 2 uses
  %i.oe = or disjoint i32 %i.od, 3
  %i.of = icmp slt i32 %i.oe, %5
  br i1 %i.of, label %.lr.ph463.i, label %.preheader371.i, !llvm.loop !150

.preheader370.i:                                  ; preds = %.lr.ph470.i, %.preheader371.i
  %.1298.lcssa.i = phi ptr [ %.0297.lcssa.i, %.preheader371.i ], [ %i.py, %.lr.ph470.i ] ; 8 uses
  %.1295.lcssa.i = phi i32 [ %.0294.lcssa.i, %.preheader371.i ], [ %i.pz, %.lr.ph470.i ] ; 6 uses
  %.19.lcssa.i = phi ptr [ %.18.lcssa.i, %.preheader371.i ], [ %i.px, %.lr.ph470.i ] ; 8 uses
  %i.og = icmp slt i32 %.1295.lcssa.i, %5
  br i1 %i.og, label %.lr.ph477.i.preheader, label %._crit_edge.i

.lr.ph477.i.preheader:                            ; preds = %.preheader370.i
  %i.oh = xor i32 %.1295.lcssa.i, -1
  %i.oi = add i32 %5, %i.oh                       ; 2 uses
  %i.oj = zext i32 %i.oi to i64
  %i.ok = add nuw nsw i64 %i.oj, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.oi, 7
  br i1 %min.iters.check, label %.lr.ph477.i.preheader185, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph477.i.preheader
  %scevgep = getelementptr i8, ptr %.19.lcssa.i, i64 2
  %i.ol = xor i32 %.1295.lcssa.i, -1
  %i.om = add i32 %5, %i.ol
  %i.on = zext i32 %i.om to i64                   ; 2 uses
  %i.oo = shl nuw nsw i64 %i.on, 1
  %scevgep127 = getelementptr i8, ptr %scevgep, i64 %i.oo ; 2 uses
  %scevgep128 = getelementptr i8, ptr %.1298.lcssa.i, i64 %i.mo
  %i.op = getelementptr i8, ptr %.1298.lcssa.i, i64 %i.mo
  %scevgep129 = getelementptr i8, ptr %i.op, i64 4
  %i.oq = shl nuw nsw i64 %i.on, 2                ; 2 uses
  %scevgep130 = getelementptr i8, ptr %scevgep129, i64 %i.oq
  %scevgep131 = getelementptr i8, ptr %.1298.lcssa.i, i64 4
  %scevgep132 = getelementptr i8, ptr %scevgep131, i64 %i.oq
  %bound0 = icmp ult ptr %.19.lcssa.i, %scevgep130
  %bound1 = icmp ult ptr %scevgep128, %scevgep127
  %found.conflict = and i1 %bound0, %bound1
  %bound0133 = icmp ult ptr %.19.lcssa.i, %scevgep132
  %bound1134 = icmp ult ptr %.1298.lcssa.i, %scevgep127
  %found.conflict135 = and i1 %bound0133, %bound1134
  %conflict.rdx = or i1 %found.conflict, %found.conflict135
  br i1 %conflict.rdx, label %.lr.ph477.i.preheader185, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ok, 8589934584              ; 5 uses
  %i.or = shl nuw nsw i64 %n.vec, 1
  %i.os = getelementptr i8, ptr %.19.lcssa.i, i64 %i.or ; 2 uses
  %i.ot = trunc i64 %n.vec to i32
  %i.ou = add i32 %.1295.lcssa.i, %i.ot
  %i.ov = shl nuw nsw i64 %n.vec, 2
  %i.ow = getelementptr i8, ptr %.1298.lcssa.i, i64 %i.ov
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.nd, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert136 = insertelement <8 x float> poison, float %i.nf, i64 0
  %broadcast.splat137 = shufflevector <8 x float> %broadcast.splatinsert136, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ox = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.19.lcssa.i, i64 %i.ox
  %i.oy = shl i64 %index, 2
  %next.gep138 = getelementptr i8, ptr %.1298.lcssa.i, i64 %i.oy ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep138, align 4, !tbaa !30, !alias.scope !167
  %i.oz = fmul fast <8 x float> %wide.load, %broadcast.splat
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %next.gep138, i64 %i.m
  %wide.load139 = load <8 x float>, ptr %i.pa, align 4, !tbaa !30, !alias.scope !168
  %i.pb = fmul fast <8 x float> %wide.load139, %broadcast.splat137
  %i.pc = shufflevector <8 x float> %i.oz, <8 x float> %i.pb, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.pd = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.pc)
  %i.pe = fptosi <16 x float> %i.pd to <16 x i32>
  %i.pf = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.pe, <16 x i32> splat (i32 -127))
  %i.pg = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.pf, <16 x i32> splat (i32 127))
  %interleaved.vec = trunc nsw <16 x i32> %i.pg to <16 x i8>
  store <16 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !17, !alias.scope !169, !noalias !170
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ph = icmp eq i64 %index.next, %n.vec
  br i1 %i.ph, label %middle.block, label %vector.body, !llvm.loop !155

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ok, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph477.i.preheader185

.lr.ph477.i.preheader185:                         ; preds = %vector.memcheck, %.lr.ph477.i.preheader, %middle.block
  %.20476.i.ph = phi ptr [ %.19.lcssa.i, %vector.memcheck ], [ %.19.lcssa.i, %.lr.ph477.i.preheader ], [ %i.os, %middle.block ]
  %.2296475.i.ph = phi i32 [ %.1295.lcssa.i, %vector.memcheck ], [ %.1295.lcssa.i, %.lr.ph477.i.preheader ], [ %i.ou, %middle.block ]
  %.2299474.i.ph = phi ptr [ %.1298.lcssa.i, %vector.memcheck ], [ %.1298.lcssa.i, %.lr.ph477.i.preheader ], [ %i.ow, %middle.block ]
  br label %.lr.ph477.i

.lr.ph470.i:                                      ; preds = %.preheader371.i, %.lr.ph470.i
  %.19469.i = phi ptr [ %i.px, %.lr.ph470.i ], [ %.18.lcssa.i, %.preheader371.i ] ; 2 uses
  %.1295468.i = phi i32 [ %i.pz, %.lr.ph470.i ], [ %.0294.lcssa.i, %.preheader371.i ]
  %.1298467.i = phi ptr [ %i.py, %.lr.ph470.i ], [ %.0297.lcssa.i, %.preheader371.i ] ; 3 uses
  %i.pi = load i64, ptr %.1298467.i, align 1, !tbaa !17
  %i.pj = insertelement <2 x i64> poison, i64 %i.pi, i64 0
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %.1298467.i, i64 %i.m
  %i.pl = load i64, ptr %i.pk, align 1, !tbaa !17
  %.uncasted.i = insertelement <2 x i64> %i.pj, i64 %i.pl, i64 1
  %i.pm = bitcast <2 x i64> %.uncasted.i to <4 x float>
  %i.pn = fmul fast <4 x float> %i.ni, %i.pm      ; 2 uses
  %i.po = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.pn)
  %i.pp = fadd fast <4 x float> %i.po, %i.pn
  %i.pq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pp)
  %i.pr = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.pq, <4 x i32> poison)
  %i.ps = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.pr, <8 x i16> <i16 -127, i16 -127, i16 -127, i16 -127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.pt = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ps, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.pu = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.pt, <8 x i16> poison)
  %i.pv = bitcast <16 x i8> %i.pu to <4 x i32>
  %i.pw = extractelement <4 x i32> %i.pv, i64 0
  store i32 %i.pw, ptr %.19469.i, align 4, !tbaa !28
  %i.px = getelementptr inbounds nuw i8, ptr %.19469.i, i64 4 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.1298467.i, i64 8 ; 2 uses
  %i.pz = add nuw nsw i32 %.1295468.i, 2          ; 3 uses
  %i.qa = or disjoint i32 %i.pz, 1
  %i.qb = icmp slt i32 %i.qa, %5
  br i1 %i.qb, label %.lr.ph470.i, label %.preheader370.i, !llvm.loop !156

.lr.ph477.i:                                      ; preds = %.lr.ph477.i.preheader185, %.lr.ph477.i
  %.20476.i = phi ptr [ %i.qm, %.lr.ph477.i ], [ %.20476.i.ph, %.lr.ph477.i.preheader185 ] ; 3 uses
  %.2296475.i = phi i32 [ %i.qo, %.lr.ph477.i ], [ %.2296475.i.ph, %.lr.ph477.i.preheader185 ]
  %.2299474.i = phi ptr [ %i.qn, %.lr.ph477.i ], [ %.2299474.i.ph, %.lr.ph477.i.preheader185 ] ; 3 uses
  %i.qc = load float, ptr %.2299474.i, align 4, !tbaa !30
  %i.qd = fmul fast float %i.qc, %i.nd
  %i.qe = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.qd)
  %i.qf = fptosi float %i.qe to i32
  %spec.select.i317365.i = tail call i32 @llvm.smax.i32(i32 %i.qf, i32 -127)
  %.0.i318366.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i317365.i, i32 127)
  %.0.i318.i = trunc nsw i32 %.0.i318366.i to i8
  store i8 %.0.i318.i, ptr %.20476.i, align 1, !tbaa !17
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %.2299474.i, i64 %i.m
  %i.qh = load float, ptr %i.qg, align 4, !tbaa !30
  %i.qi = fmul fast float %i.qh, %i.nf
  %i.qj = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.qi)
  %i.qk = fptosi float %i.qj to i32
  %spec.select.i315367.i = tail call i32 @llvm.smax.i32(i32 %i.qk, i32 -127)
  %.0.i316368.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i315367.i, i32 127)
  %.0.i316.i = trunc nsw i32 %.0.i316368.i to i8
  %i.ql = getelementptr inbounds nuw i8, ptr %.20476.i, i64 1
  store i8 %.0.i316.i, ptr %i.ql, align 1, !tbaa !17
  %i.qm = getelementptr inbounds nuw i8, ptr %.20476.i, i64 2 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %.2299474.i, i64 4
  %i.qo = add nuw nsw i32 %.2296475.i, 1          ; 2 uses
  %exitcond545.not.i = icmp eq i32 %i.qo, %5
  br i1 %exitcond545.not.i, label %._crit_edge.i, label %.lr.ph477.i, !llvm.loop !157

._crit_edge.i:                                    ; preds = %.lr.ph477.i, %middle.block, %.preheader370.i
  %.20.lcssa.i = phi ptr [ %.19.lcssa.i, %.preheader370.i ], [ %i.os, %middle.block ], [ %i.qm, %.lr.ph477.i ] ; 2 uses
  %indvars.iv.next547.i = add nuw nsw i64 %indvars.iv546.i, 2 ; 3 uses
  %i.qp = icmp slt i64 %indvars.iv.next547.i, %invariant.op594.i
  br i1 %i.qp, label %bb.j, label %.preheader369.loopexit.i, !llvm.loop !158

bb.k:                                             ; preds = %._crit_edge496.i, %.lr.ph500.i
  %indvars.iv550.i = phi i64 [ %i.mu, %.lr.ph500.i ], [ %indvars.iv.next551.i, %._crit_edge496.i ] ; 2 uses
  %.21499.i = phi ptr [ %.17.lcssa.i, %.lr.ph500.i ], [ %.23.lcssa.i, %._crit_edge496.i ] ; 2 uses
  %i.qq = load ptr, ptr %0, align 8, !tbaa !14
  %i.qr = add nsw i64 %indvars.iv550.i, %i.mv     ; 2 uses
  %i.qs = mul i64 %i.qr, %i.m
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %i.qs
  %i.qu = getelementptr inbounds [4 x i8], ptr %i.qt, i64 %i.mr ; 2 uses
  %i.qv = load ptr, ptr %6, align 8, !tbaa !14
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.qv, i64 %i.qr
  %i.qx = load float, ptr %i.qw, align 4, !tbaa !30 ; 6 uses
  %i.qy = insertelement <4 x float> poison, float %i.qx, i64 0
  %i.qz = shufflevector <4 x float> %i.qy, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.ms, label %.lr.ph488.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph488.i, %bb.k
  %.22.lcssa.i = phi ptr [ %.21499.i, %bb.k ], [ %i.uc, %.lr.ph488.i ] ; 9 uses
  %.0276.lcssa.i = phi ptr [ %i.qu, %bb.k ], [ %i.ud, %.lr.ph488.i ] ; 8 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.k ], [ %i.mt, %.lr.ph488.i ] ; 7 uses
  %i.ra = icmp slt i32 %.0.lcssa.i, %5
  br i1 %i.ra, label %iter.check, label %._crit_edge496.i

iter.check:                                       ; preds = %.preheader.i
  %i.rb = xor i32 %.0.lcssa.i, -1
  %i.rc = add i32 %5, %i.rb                       ; 3 uses
  %i.rd = zext i32 %i.rc to i64
  %i.re = add nuw nsw i64 %i.rd, 1                ; 5 uses
  %min.iters.check151 = icmp ult i32 %i.rc, 3
  br i1 %min.iters.check151, label %.lr.ph495.i.preheader, label %vector.memcheck142

vector.memcheck142:                               ; preds = %iter.check
  %scevgep143 = getelementptr i8, ptr %.22.lcssa.i, i64 1
  %i.rf = xor i32 %.0.lcssa.i, -1
  %i.rg = add i32 %5, %i.rf
  %i.rh = zext i32 %i.rg to i64                   ; 2 uses
  %scevgep144 = getelementptr i8, ptr %scevgep143, i64 %i.rh
  %scevgep145 = getelementptr i8, ptr %.0276.lcssa.i, i64 4
end_hunk_0
begin_hunk_1_@_ZN4ncnn39transpose_pack_A_tile_fp32_to_int8_avx2ERKNS_3MatERS0_iiiiS2_:bb.a
  %i.re = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rc)
  %i.rf = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.rd)
  %i.rg = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.re, <4 x i32> %i.rf)
  %i.rh = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.rg, <8 x i16> splat (i16 -127))
  %i.ri = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.rh, <8 x i16> splat (i16 127))
  %i.rj = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ri, <8 x i16> poison)
  %i.rk = bitcast <16 x i8> %i.rj to <2 x i64>
  %i.rl = extractelement <2 x i64> %i.rk, i64 0
  store i64 %i.rl, ptr %.13685.i, align 8, !tbaa !27
  %i.rm = getelementptr inbounds nuw i8, ptr %.13685.i, i64 8 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %.4469684.i, i64 %.idx496.i ; 2 uses
  %i.ro = add nuw nsw i32 %.0485683.i, 2          ; 2 uses
  %i.rp = or disjoint i32 %i.ro, 1
  %i.rq = icmp slt i32 %i.rp, %5
  br i1 %i.rq, label %.lr.ph686.i, label %.preheader633.i, !llvm.loop !180

.lr.ph693.i:                                      ; preds = %.lr.ph693.i.prol.loopexit, %.lr.ph693.i
  %.14692.i = phi ptr [ %i.sp, %.lr.ph693.i ], [ %.14692.i.unr, %.lr.ph693.i.prol.loopexit ] ; 3 uses
  %.5470691.i = phi ptr [ %i.sq, %.lr.ph693.i ], [ %.5470691.i.unr, %.lr.ph693.i.prol.loopexit ] ; 2 uses
  %.1486690.i = phi i32 [ %i.sr, %.lr.ph693.i ], [ %.1486690.i.unr, %.lr.ph693.i.prol.loopexit ]
  %i.rr = load <4 x float>, ptr %.5470691.i, align 1, !tbaa !17
  %i.rs = fmul fast <4 x float> %i.rr, %i.qc      ; 2 uses
  %i.rt = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.rs)
  %i.ru = fadd fast <4 x float> %i.rt, %i.rs
  %i.rv = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ru)
  %i.rw = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.rv, <4 x i32> poison)
  %i.rx = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.rw, <8 x i16> <i16 -127, i16 -127, i16 -127, i16 -127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.ry = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.rx, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.rz = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ry, <8 x i16> poison)
  %i.sa = bitcast <16 x i8> %i.rz to <4 x i32>
  %i.sb = extractelement <4 x i32> %i.sa, i64 0
  store i32 %i.sb, ptr %.14692.i, align 4, !tbaa !28
  %i.sc = getelementptr inbounds nuw i8, ptr %.14692.i, i64 4
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %.5470691.i, i64 %i.m ; 2 uses
  %i.se = load <4 x float>, ptr %i.sd, align 1, !tbaa !17
  %i.sf = fmul fast <4 x float> %i.se, %i.qc      ; 2 uses
  %i.sg = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.sf)
  %i.sh = fadd fast <4 x float> %i.sg, %i.sf
  %i.si = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.sh)
  %i.sj = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.si, <4 x i32> poison)
  %i.sk = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.sj, <8 x i16> <i16 -127, i16 -127, i16 -127, i16 -127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.sl = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.sk, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.sm = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.sl, <8 x i16> poison)
  %i.sn = bitcast <16 x i8> %i.sm to <4 x i32>
  %i.so = extractelement <4 x i32> %i.sn, i64 0
  store i32 %i.so, ptr %i.sc, align 4, !tbaa !28
  %i.sp = getelementptr inbounds nuw i8, ptr %.14692.i, i64 8 ; 2 uses
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %i.m
  %i.sr = add nuw nsw i32 %.1486690.i, 2          ; 2 uses
  %exitcond803.not.i.1 = icmp eq i32 %i.sr, %5
  br i1 %exitcond803.not.i.1, label %.loopexit634.i, label %.lr.ph693.i, !llvm.loop !181

.loopexit634.i:                                   ; preds = %.lr.ph693.i.prol.loopexit, %.lr.ph693.i, %.lr.ph680.i, %.lr.ph674.i, %.preheader633.i, %bb.k, %bb.j, %bb.i
  %.15.i = phi ptr [ %.8696.i, %bb.i ], [ %.13.lcssa.i, %.preheader633.i ], [ %i.nq, %.lr.ph674.i ], [ %i.pu, %.lr.ph680.i ], [ %.8696.i, %bb.k ], [ %.8696.i, %bb.j ], [ %.lcssa165.unr, %.lr.ph693.i.prol.loopexit ], [ %i.sp, %.lr.ph693.i ] ; 2 uses
  %indvars.iv.next805.i = add nuw nsw i64 %indvars.iv804.i, 4 ; 3 uses
  %i.ss = icmp slt i64 %indvars.iv.next805.i, %invariant.op.i
  br i1 %i.ss, label %bb.i, label %.preheader632.loopexit.i, !llvm.loop !182

.preheader625.loopexit.i:                         ; preds = %.loopexit628.i
  %i.st = trunc nuw nsw i64 %indvars.iv.next809.i to i32
  br label %.preheader625.i

.preheader625.i:                                  ; preds = %.preheader625.loopexit.i, %.preheader632.i
  %.2446.lcssa.i = phi i32 [ %.1445.lcssa.i, %.preheader632.i ], [ %i.st, %.preheader625.loopexit.i ] ; 2 uses
  %.16.lcssa.i = phi ptr [ %.8.lcssa.i, %.preheader632.i ], [ %.24.i, %.preheader625.loopexit.i ]
  %i.su = icmp slt i32 %.2446.lcssa.i, %3
  br i1 %i.su, label %.lr.ph762.i, label %_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

.lr.ph762.i:                                      ; preds = %.preheader625.i
  %i.sv = sext i32 %4 to i64
  %i.sw = mul i64 %i.m, %i.sv
  %i.sx = icmp sgt i32 %5, 7
  %.idx489.i = shl i64 %i.m, 5
  %i.sy = icmp sgt i32 %5, 3                      ; 2 uses
  %.idx488.i = shl i64 %i.m, 4                    ; 2 uses
  %i.sz = trunc i64 %i.m to i32
  %i.ta = insertelement <4 x i32> poison, i32 %i.sz, i64 0
  %i.tb = shufflevector <4 x i32> %i.ta, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.tc = mul <4 x i32> %i.tb, <i32 0, i32 1, i32 2, i32 3>
  %i.td = and i32 %5, -4
  %i.te = sext i32 %.2446.lcssa.i to i64
  %i.tf = sext i32 %2 to i64
  %i.tg = sext i32 %i.d to i64
  %wide.trip.count.i = sext i32 %3 to i64
  %xtraiter175 = and i32 %5, 1
  %lcmp.mod176.not = icmp eq i32 %xtraiter175, 0
  br label %bb.q

bb.m:                                             ; preds = %.loopexit628.i, %.lr.ph733.i
  %indvars.iv808.i = phi i64 [ %i.ks, %.lr.ph733.i ], [ %indvars.iv.next809.i, %.loopexit628.i ] ; 2 uses
  %.16732.i = phi ptr [ %.8.lcssa.i, %.lr.ph733.i ], [ %.24.i, %.loopexit628.i ] ; 7 uses
  %i.th = load ptr, ptr %0, align 8, !tbaa !14
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.ko
  %i.tj = add nsw i64 %indvars.iv808.i, %i.ku     ; 4 uses
  %i.tk = mul nsw i64 %i.tj, %i.kv
  %i.tl = getelementptr inbounds [4 x i8], ptr %i.ti, i64 %i.tk ; 4 uses
  switch i32 %i.d, label %.loopexit628.i [
    i32 8, label %bb.n
    i32 4, label %bb.o
    i32 1, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.tm = load ptr, ptr %6, align 8, !tbaa !14
  %i.tn = getelementptr [4 x i8], ptr %i.tm, i64 %i.tj ; 2 uses
  %i.to = load float, ptr %i.tn, align 4, !tbaa !30
  %i.tp = insertelement <8 x float> poison, float %i.to, i64 0
  %i.tq = shufflevector <8 x float> %i.tp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.tr = getelementptr i8, ptr %i.tn, i64 4
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !30
  %i.tt = insertelement <8 x float> poison, float %i.ts, i64 0
  %i.tu = shufflevector <8 x float> %i.tt, <8 x float> poison, <8 x i32> zeroinitializer
  br i1 %i.kp, label %.lr.ph703.i, label %.loopexit628.i

.lr.ph703.i:                                      ; preds = %bb.n, %.lr.ph703.i
  %.17702.i = phi ptr [ %i.ur, %.lr.ph703.i ], [ %.16732.i, %bb.n ] ; 2 uses
  %.0476701.i = phi i32 [ %i.ut, %.lr.ph703.i ], [ 0, %bb.n ]
  %.0477700.i = phi ptr [ %i.us, %.lr.ph703.i ], [ %i.tl, %bb.n ] ; 3 uses
  %i.tv = load <8 x float>, ptr %.0477700.i, align 32, !tbaa !17
  %i.tw = getelementptr inbounds nuw i8, ptr %.0477700.i, i64 32
  %i.tx = load <8 x float>, ptr %i.tw, align 32, !tbaa !17
  %i.ty = fmul fast <8 x float> %i.tv, %i.tq      ; 2 uses
  %i.tz = fmul fast <8 x float> %i.tx, %i.tu      ; 2 uses
  %i.ua = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ty)
  %i.ub = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.tz)
  %i.uc = fadd fast <8 x float> %i.ua, %i.ty
  %i.ud = fadd fast <8 x float> %i.ub, %i.tz
  %i.ue = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.uc)
  %i.uf = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ud)
  %i.ug = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.ue, <8 x i32> %i.uf)
  %i.uh = bitcast <16 x i16> %i.ug to <4 x i64>
  %i.ui = shufflevector <4 x i64> %i.uh, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.uj = bitcast <4 x i64> %i.ui to <16 x i16>
  %i.uk = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.uj, <16 x i16> splat (i16 -127))
  %i.ul = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.uk, <16 x i16> splat (i16 127))
  %i.um = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.ul, <16 x i16> poison)
  %i.un = bitcast <32 x i8> %i.um to <8 x i32>
  %i.uo = shufflevector <8 x i32> %i.un, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.up = bitcast <4 x i32> %i.uo to <8 x i16>
  %i.uq = shufflevector <8 x i16> %i.up, <8 x i16> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  store <8 x i16> %i.uq, ptr %.17702.i, align 16, !tbaa !17
  %i.ur = getelementptr inbounds nuw i8, ptr %.17702.i, i64 16 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %.0477700.i, i64 %.idx495.i
  %i.ut = add nuw nsw i32 %.0476701.i, 8          ; 2 uses
  %i.uu = or disjoint i32 %i.ut, 7
  %i.uv = icmp slt i32 %i.uu, %5
  br i1 %i.uv, label %.lr.ph703.i, label %.loopexit628.i, !llvm.loop !183

bb.o:                                             ; preds = %bb.m
  %i.uw = load ptr, ptr %6, align 8, !tbaa !14
  %i.ux = getelementptr [4 x i8], ptr %i.uw, i64 %i.tj ; 2 uses
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !30
  %i.uz = insertelement <4 x float> poison, float %i.uy, i64 0 ; 2 uses
  %i.va = getelementptr i8, ptr %i.ux, i64 4
  %i.vb = load float, ptr %i.va, align 4, !tbaa !30
  %i.vc = insertelement <4 x float> poison, float %i.vb, i64 0 ; 2 uses
  br i1 %i.kq, label %.lr.ph709.i.preheader, label %.loopexit628.i

.lr.ph709.i.preheader:                            ; preds = %bb.o
  %i.vd = shufflevector <4 x float> %i.uz, <4 x float> %i.vc, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  %i.ve = shufflevector <4 x float> %i.uz, <4 x float> %i.vc, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  br label %.lr.ph709.i

.lr.ph709.i:                                      ; preds = %.lr.ph709.i.preheader, %.lr.ph709.i
  %.19708.i = phi ptr [ %i.vy, %.lr.ph709.i ], [ %.16732.i, %.lr.ph709.i.preheader ] ; 2 uses
  %.0475707.i = phi i32 [ %i.wa, %.lr.ph709.i ], [ 0, %.lr.ph709.i.preheader ]
  %.2479706.i = phi ptr [ %i.vz, %.lr.ph709.i ], [ %i.tl, %.lr.ph709.i.preheader ] ; 3 uses
  %i.vf = load <4 x float>, ptr %.2479706.i, align 16, !tbaa !17 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %.2479706.i, i64 16
  %i.vh = load <4 x float>, ptr %i.vg, align 16, !tbaa !17 ; 2 uses
  %i.vi = shufflevector <4 x float> %i.vf, <4 x float> %i.vh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.vj = fmul fast <4 x float> %i.vi, %i.vd      ; 2 uses
  %i.vk = shufflevector <4 x float> %i.vf, <4 x float> %i.vh, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.vl = fmul fast <4 x float> %i.vk, %i.ve      ; 2 uses
  %i.vm = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.vj)
  %i.vn = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.vl)
  %i.vo = fadd fast <4 x float> %i.vm, %i.vj
  %i.vp = fadd fast <4 x float> %i.vn, %i.vl
  %i.vq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.vo)
  %i.vr = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.vp)
  %i.vs = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.vq, <4 x i32> %i.vr)
  %i.vt = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.vs, <8 x i16> splat (i16 -127))
  %i.vu = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.vt, <8 x i16> splat (i16 127))
  %i.vv = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.vu, <8 x i16> poison)
  %i.vw = bitcast <16 x i8> %i.vv to <2 x i64>
  %i.vx = extractelement <2 x i64> %i.vw, i64 0
  store i64 %i.vx, ptr %.19708.i, align 8, !tbaa !27
  %i.vy = getelementptr inbounds nuw i8, ptr %.19708.i, i64 8 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.2479706.i, i64 %.idx494.i
  %i.wa = add nuw nsw i32 %.0475707.i, 4          ; 2 uses
  %i.wb = or disjoint i32 %i.wa, 3
  %i.wc = icmp slt i32 %i.wb, %5
  br i1 %i.wc, label %.lr.ph709.i, label %.loopexit628.i, !llvm.loop !184

bb.p:                                             ; preds = %bb.m
  %i.wd = load ptr, ptr %6, align 8, !tbaa !14
  %i.we = getelementptr [4 x i8], ptr %i.wd, i64 %i.tj ; 2 uses
  %i.wf = load float, ptr %i.we, align 4, !tbaa !30 ; 2 uses
  %i.wg = getelementptr i8, ptr %i.we, i64 4
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !30 ; 2 uses
  %i.wi = insertelement <4 x float> poison, float %i.wf, i64 0 ; 3 uses
  %i.wj = insertelement <4 x float> poison, float %i.wh, i64 0 ; 3 uses
  %i.wk = shufflevector <4 x float> %i.wi, <4 x float> %i.wj, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  br i1 %i.kq, label %.lr.ph715.i.preheader, label %.preheader629.i

.lr.ph715.i.preheader:                            ; preds = %bb.p
  %7 = shufflevector <4 x float> %i.wi, <4 x float> %i.wj, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  %8 = shufflevector <4 x float> %i.wi, <4 x float> %i.wj, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  br label %.lr.ph715.i

.preheader629.i:                                  ; preds = %.lr.ph715.i, %bb.p
  %.4481.lcssa.i = phi ptr [ %i.tl, %bb.p ], [ %i.xt, %.lr.ph715.i ] ; 2 uses
  %.0471.lcssa.i = phi i32 [ 0, %bb.p ], [ %i.kr, %.lr.ph715.i ] ; 3 uses
  %.21.lcssa.i = phi ptr [ %.16732.i, %bb.p ], [ %i.xs, %.lr.ph715.i ] ; 2 uses
  %i.wl = or disjoint i32 %.0471.lcssa.i, 1
  %i.wm = icmp slt i32 %i.wl, %5
  br i1 %i.wm, label %.lr.ph722.i, label %.preheader627.i

.lr.ph715.i:                                      ; preds = %.lr.ph715.i.preheader, %.lr.ph715.i
  %.21714.i = phi ptr [ %i.xs, %.lr.ph715.i ], [ %.16732.i, %.lr.ph715.i.preheader ] ; 2 uses
  %.0471713.i = phi i32 [ %i.xu, %.lr.ph715.i ], [ 0, %.lr.ph715.i.preheader ]
  %.4481712.i = phi ptr [ %i.xt, %.lr.ph715.i ], [ %i.tl, %.lr.ph715.i.preheader ] ; 5 uses
  %i.wn = load i64, ptr %.4481712.i, align 1, !tbaa !17
  %i.wo = insertelement <2 x i64> poison, i64 %i.wn, i64 0
  %i.wp = bitcast <2 x i64> %i.wo to <4 x float>
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %.4481712.i, i64 %i.m
  %i.wr = load i64, ptr %i.wq, align 1, !tbaa !17
  %i.ws = insertelement <2 x i64> poison, i64 %i.wr, i64 0
  %i.wt = bitcast <2 x i64> %i.ws to <4 x float>
  %i.wu = getelementptr inbounds nuw i8, ptr %.4481712.i, i64 %.idx491.i
  %i.wv = load i64, ptr %i.wu, align 1, !tbaa !17
  %i.ww = insertelement <2 x i64> poison, i64 %i.wv, i64 0
  %i.wx = bitcast <2 x i64> %i.ww to <4 x float>
  %i.wy = getelementptr inbounds nuw i8, ptr %.4481712.i, i64 %.idx492.i
  %i.wz = load i64, ptr %i.wy, align 1, !tbaa !17
  %i.xa = insertelement <2 x i64> poison, i64 %i.wz, i64 0
  %i.xb = bitcast <2 x i64> %i.xa to <4 x float>
  %i.xc = shufflevector <4 x float> %i.wp, <4 x float> %i.wt, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.xd = shufflevector <4 x float> %i.wx, <4 x float> %i.xb, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.xe = fmul fast <4 x float> %7, %i.xc         ; 2 uses
  %i.xf = fmul fast <4 x float> %8, %i.xd         ; 2 uses
  %i.xg = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.xe)
  %i.xh = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.xf)
  %i.xi = fadd fast <4 x float> %i.xg, %i.xe
  %i.xj = fadd fast <4 x float> %i.xh, %i.xf
  %i.xk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.xi)
  %i.xl = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.xj)
  %i.xm = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.xk, <4 x i32> %i.xl)
  %i.xn = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.xm, <8 x i16> splat (i16 -127))
  %i.xo = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.xn, <8 x i16> splat (i16 127))
  %i.xp = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.xo, <8 x i16> poison)
  %i.xq = bitcast <16 x i8> %i.xp to <2 x i64>
  %i.xr = extractelement <2 x i64> %i.xq, i64 0
  store i64 %i.xr, ptr %.21714.i, align 8, !tbaa !27
  %i.xs = getelementptr inbounds nuw i8, ptr %.21714.i, i64 8 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %.4481712.i, i64 %.idx494.i ; 2 uses
  %i.xu = add nuw nsw i32 %.0471713.i, 4          ; 2 uses
  %i.xv = or disjoint i32 %i.xu, 3
  %i.xw = icmp slt i32 %i.xv, %5
  br i1 %i.xw, label %.lr.ph715.i, label %.preheader629.i, !llvm.loop !185

.preheader627.i:                                  ; preds = %.lr.ph722.i, %.preheader629.i
  %.5482.lcssa.i = phi ptr [ %.4481.lcssa.i, %.preheader629.i ], [ %i.yr, %.lr.ph722.i ]
  %.1472.lcssa.i = phi i32 [ %.0471.lcssa.i, %.preheader629.i ], [ %i.ys, %.lr.ph722.i ] ; 2 uses
  %.22.lcssa.i = phi ptr [ %.21.lcssa.i, %.preheader629.i ], [ %i.yq, %.lr.ph722.i ] ; 2 uses
  %i.xx = icmp slt i32 %.1472.lcssa.i, %5
  br i1 %i.xx, label %.lr.ph729.i, label %.loopexit628.i

.lr.ph722.i:                                      ; preds = %.preheader629.i, %.lr.ph722.i
  %.22721.i = phi ptr [ %i.yq, %.lr.ph722.i ], [ %.21.lcssa.i, %.preheader629.i ] ; 2 uses
  %.1472720.i = phi i32 [ %i.ys, %.lr.ph722.i ], [ %.0471.lcssa.i, %.preheader629.i ]
  %.5482719.i = phi ptr [ %i.yr, %.lr.ph722.i ], [ %.4481.lcssa.i, %.preheader629.i ] ; 3 uses
  %i.xy = load i64, ptr %.5482719.i, align 1, !tbaa !17
  %i.xz = insertelement <2 x i64> poison, i64 %i.xy, i64 0
  %i.ya = bitcast <2 x i64> %i.xz to <4 x float>
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %.5482719.i, i64 %i.m
  %i.yc = load i64, ptr %i.yb, align 1, !tbaa !17
  %i.yd = insertelement <2 x i64> poison, i64 %i.yc, i64 0
  %i.ye = bitcast <2 x i64> %i.yd to <4 x float>
  %i.yf = shufflevector <4 x float> %i.ya, <4 x float> %i.ye, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.yg = fmul fast <4 x float> %i.yf, %i.wk      ; 2 uses
  %i.yh = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.yg)
  %i.yi = fadd fast <4 x float> %i.yh, %i.yg
  %i.yj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.yi)
  %i.yk = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.yj, <4 x i32> poison)
  %i.yl = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.yk, <8 x i16> <i16 -127, i16 -127, i16 -127, i16 -127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.ym = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.yl, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.yn = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ym, <8 x i16> poison)
  %i.yo = bitcast <16 x i8> %i.yn to <4 x i32>
  %i.yp = extractelement <4 x i32> %i.yo, i64 0
  store i32 %i.yp, ptr %.22721.i, align 4, !tbaa !28
  %i.yq = getelementptr inbounds nuw i8, ptr %.22721.i, i64 4 ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %.5482719.i, i64 %.idx491.i ; 2 uses
  %i.ys = add nuw nsw i32 %.1472720.i, 2          ; 3 uses
  %i.yt = or disjoint i32 %i.ys, 1
  %i.yu = icmp slt i32 %i.yt, %5
  br i1 %i.yu, label %.lr.ph722.i, label %.preheader627.i, !llvm.loop !186

.lr.ph729.i:                                      ; preds = %.preheader627.i, %.lr.ph729.i
  %.23728.i = phi ptr [ %i.zf, %.lr.ph729.i ], [ %.22.lcssa.i, %.preheader627.i ] ; 3 uses
  %.2473727.i = phi i32 [ %i.zh, %.lr.ph729.i ], [ %.1472.lcssa.i, %.preheader627.i ]
  %.6483726.i = phi ptr [ %i.zg, %.lr.ph729.i ], [ %.5482.lcssa.i, %.preheader627.i ] ; 3 uses
  %i.yv = load float, ptr %.6483726.i, align 4, !tbaa !30
  %i.yw = fmul fast float %i.yv, %i.wf
  %i.yx = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.yw)
  %i.yy = fptosi float %i.yx to i32
  %spec.select.i504619.i = tail call i32 @llvm.smax.i32(i32 %i.yy, i32 -127)
  %.0.i505620.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i504619.i, i32 127)
  %.0.i505.i = trunc nsw i32 %.0.i505620.i to i8
  store i8 %.0.i505.i, ptr %.23728.i, align 1, !tbaa !17
  %i.yz = getelementptr inbounds nuw i8, ptr %.6483726.i, i64 4
  %i.za = load float, ptr %i.yz, align 4, !tbaa !30
  %i.zb = fmul fast float %i.za, %i.wh
  %i.zc = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.zb)
  %i.zd = fptosi float %i.zc to i32
  %spec.select.i502621.i = tail call i32 @llvm.smax.i32(i32 %i.zd, i32 -127)
  %.0.i503622.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i502621.i, i32 127)
  %.0.i503.i = trunc nsw i32 %.0.i503622.i to i8
  %i.ze = getelementptr inbounds nuw i8, ptr %.23728.i, i64 1
  store i8 %.0.i503.i, ptr %i.ze, align 1, !tbaa !17
  %i.zf = getelementptr inbounds nuw i8, ptr %.23728.i, i64 2 ; 2 uses
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %.6483726.i, i64 %i.m
  %i.zh = add nuw nsw i32 %.2473727.i, 1          ; 2 uses
  %exitcond807.not.i = icmp eq i32 %i.zh, %5
  br i1 %exitcond807.not.i, label %.loopexit628.i, label %.lr.ph729.i, !llvm.loop !187

.loopexit628.i:                                   ; preds = %.lr.ph729.i, %.lr.ph709.i, %.lr.ph703.i, %.preheader627.i, %bb.o, %bb.n, %bb.m
  %.24.i = phi ptr [ %.16732.i, %bb.m ], [ %.22.lcssa.i, %.preheader627.i ], [ %i.ur, %.lr.ph703.i ], [ %i.vy, %.lr.ph709.i ], [ %.16732.i, %bb.o ], [ %.16732.i, %bb.n ], [ %i.zf, %.lr.ph729.i ] ; 2 uses
  %indvars.iv.next809.i = add nuw nsw i64 %indvars.iv808.i, 2 ; 3 uses
  %i.zi = icmp slt i64 %indvars.iv.next809.i, %invariant.op872.i
  br i1 %i.zi, label %bb.m, label %.preheader625.loopexit.i, !llvm.loop !188

bb.q:                                             ; preds = %.loopexit.i, %.lr.ph762.i
  %indvars.iv812.i = phi i64 [ %i.te, %.lr.ph762.i ], [ %indvars.iv.next813.i, %.loopexit.i ] ; 2 uses
  %.25761.i = phi ptr [ %.16.lcssa.i, %.lr.ph762.i ], [ %.32.i, %.loopexit.i ] ; 7 uses
  %i.zj = load ptr, ptr %0, align 8, !tbaa !14
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %i.zj, i64 %i.sw
  %i.zl = add nsw i64 %indvars.iv812.i, %i.tf     ; 2 uses
  %i.zm = mul nsw i64 %i.zl, %i.tg
  %i.zn = getelementptr inbounds [4 x i8], ptr %i.zk, i64 %i.zm ; 4 uses
  %i.zo = load ptr, ptr %6, align 8, !tbaa !14
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.zo, i64 %i.zl
  %i.zq = load float, ptr %i.zp, align 4, !tbaa !30 ; 6 uses
  switch i32 %i.d, label %.loopexit.i [
    i32 8, label %bb.r
    i32 4, label %bb.s
    i32 1, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  %i.zr = insertelement <8 x float> poison, float %i.zq, i64 0
  %i.zs = shufflevector <8 x float> %i.zr, <8 x float> poison, <8 x i32> zeroinitializer
  br i1 %i.sx, label %.lr.ph739.i, label %.loopexit.i

.lr.ph739.i:                                      ; preds = %bb.r, %.lr.ph739.i
  %.26738.i = phi ptr [ %i.aah, %.lr.ph739.i ], [ %.25761.i, %bb.r ] ; 2 uses
  %.0448737.i = phi i32 [ %i.aaj, %.lr.ph739.i ], [ 0, %bb.r ]
  %.0449736.i = phi ptr [ %i.aai, %.lr.ph739.i ], [ %i.zn, %bb.r ] ; 2 uses
  %i.zt = load <8 x float>, ptr %.0449736.i, align 32, !tbaa !17
  %i.zu = fmul fast <8 x float> %i.zt, %i.zs      ; 2 uses
  %i.zv = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.zu)
  %i.zw = fadd fast <8 x float> %i.zv, %i.zu
  %i.zx = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.zw)
  %i.zy = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.zx, <8 x i32> poison)
  %i.zz = bitcast <16 x i16> %i.zy to <8 x i32>
  %i.aaa = shufflevector <8 x i32> %i.zz, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aab = bitcast <4 x i32> %i.aaa to <8 x i16>
  %i.aac = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aab, <8 x i16> splat (i16 -127))
  %i.aad = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aac, <8 x i16> splat (i16 127))
  %i.aae = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.aad, <8 x i16> poison)
  %i.aaf = bitcast <16 x i8> %i.aae to <2 x i64>
  %i.aag = extractelement <2 x i64> %i.aaf, i64 0
  store i64 %i.aag, ptr %.26738.i, align 8, !tbaa !27
  %i.aah = getelementptr inbounds nuw i8, ptr %.26738.i, i64 8 ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %.0449736.i, i64 %.idx489.i
  %i.aaj = add nuw nsw i32 %.0448737.i, 8         ; 2 uses
  %i.aak = or disjoint i32 %i.aaj, 7
  %i.aal = icmp slt i32 %i.aak, %5
  br i1 %i.aal, label %.lr.ph739.i, label %.loopexit.i, !llvm.loop !189

bb.s:                                             ; preds = %bb.q
  %i.aam = insertelement <4 x float> poison, float %i.zq, i64 0
  %i.aan = shufflevector <4 x float> %i.aam, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.sy, label %.lr.ph745.i, label %.loopexit.i

.lr.ph745.i:                                      ; preds = %bb.s, %.lr.ph745.i
  %.28744.i = phi ptr [ %i.aaz, %.lr.ph745.i ], [ %.25761.i, %bb.s ] ; 2 uses
  %.0443743.i = phi i32 [ %i.abb, %.lr.ph745.i ], [ 0, %bb.s ]
  %.2451742.i = phi ptr [ %i.aba, %.lr.ph745.i ], [ %i.zn, %bb.s ] ; 2 uses
  %i.aao = load <4 x float>, ptr %.2451742.i, align 16, !tbaa !17
  %i.aap = fmul fast <4 x float> %i.aao, %i.aan   ; 2 uses
  %i.aaq = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.aap)
  %i.aar = fadd fast <4 x float> %i.aaq, %i.aap
  %i.aas = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aar)
  %i.aat = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.aas, <4 x i32> poison)
  %i.aau = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.aat, <8 x i16> <i16 -127, i16 -127, i16 -127, i16 -127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.aav = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aau, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.aaw = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.aav, <8 x i16> poison)
  %i.aax = bitcast <16 x i8> %i.aaw to <4 x i32>
  %i.aay = extractelement <4 x i32> %i.aax, i64 0
  store i32 %i.aay, ptr %.28744.i, align 4, !tbaa !28
  %i.aaz = getelementptr inbounds nuw i8, ptr %.28744.i, i64 4 ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %.2451742.i, i64 %.idx488.i
  %i.abb = add nuw nsw i32 %.0443743.i, 4         ; 2 uses
  %i.abc = or disjoint i32 %i.abb, 3
  %i.abd = icmp slt i32 %i.abc, %5
  br i1 %i.abd, label %.lr.ph745.i, label %.loopexit.i, !llvm.loop !190

bb.t:                                             ; preds = %bb.q
  %i.abe = insertelement <4 x float> poison, float %i.zq, i64 0
  %i.abf = shufflevector <4 x float> %i.abe, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.sy, label %.lr.ph751.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph751.i, %bb.t
  %.4453.lcssa.i = phi ptr [ %i.zn, %bb.t ], [ %i.acb, %.lr.ph751.i ] ; 3 uses
  %.30.lcssa.i = phi ptr [ %.25761.i, %bb.t ], [ %i.aca, %.lr.ph751.i ] ; 4 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.t ], [ %i.td, %.lr.ph751.i ] ; 4 uses
  %i.abg = icmp slt i32 %.0.lcssa.i, %5
  br i1 %i.abg, label %.lr.ph758.i.preheader, label %.loopexit.i

.lr.ph758.i.preheader:                            ; preds = %.preheader.i
  %.neg177 = or disjoint i32 %.0.lcssa.i, 1
  br i1 %lcmp.mod176.not, label %.lr.ph758.i.prol.loopexit, label %.lr.ph758.i.prol

.lr.ph758.i.prol:                                 ; preds = %.lr.ph758.i.preheader
  %i.abh = load float, ptr %.4453.lcssa.i, align 4, !tbaa !30
  %i.abi = fmul fast float %i.abh, %i.zq
  %i.abj = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.abi)
  %i.abk = fptosi float %i.abj to i32
  %spec.select.i617.i.prol = tail call i32 @llvm.smax.i32(i32 %i.abk, i32 -127)
  %.0.i618.i.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i617.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i618.i.prol to i8
  store i8 %.0.i.i.prol, ptr %.30.lcssa.i, align 1, !tbaa !17
  %i.abl = getelementptr inbounds nuw i8, ptr %.30.lcssa.i, i64 1 ; 2 uses
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %.4453.lcssa.i, i64 %i.m
  %i.abn = or disjoint i32 %.0.lcssa.i, 1
  br label %.lr.ph758.i.prol.loopexit

.lr.ph758.i.prol.loopexit:                        ; preds = %.lr.ph758.i.prol, %.lr.ph758.i.preheader
  %.lcssa148.unr = phi ptr [ poison, %.lr.ph758.i.preheader ], [ %i.abl, %.lr.ph758.i.prol ]
  %.1757.i.unr = phi i32 [ %.0.lcssa.i, %.lr.ph758.i.preheader ], [ %i.abn, %.lr.ph758.i.prol ]
  %.31756.i.unr = phi ptr [ %.30.lcssa.i, %.lr.ph758.i.preheader ], [ %i.abl, %.lr.ph758.i.prol ]
  %.5454755.i.unr = phi ptr [ %.4453.lcssa.i, %.lr.ph758.i.preheader ], [ %i.abm, %.lr.ph758.i.prol ]
  %i.abo = icmp eq i32 %5, %.neg177
  br i1 %i.abo, label %.loopexit.i, label %.lr.ph758.i
end_hunk_1

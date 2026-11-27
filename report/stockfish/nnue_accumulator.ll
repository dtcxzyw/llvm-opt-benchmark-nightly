Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/nnue_accumulator?download=true
inline.NumInlined: 647
inline.NumDeleted: 172
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN9Stockfish4Eval4NNUE16AccumulatorStack13evaluate_sideINS1_8Features11HalfKAv2_hmELj128EEEvNS_5ColorERKNS_8PositionERKNS1_18FeatureTransformerIXT0_EEERNS1_17AccumulatorCaches5CacheIXT0_EEE:bb.a
  %i.ts = getelementptr inbounds nuw i8, ptr %3, i64 5767488 ; 9 uses
  %wide.trip.count260.i = zext nneg i32 %i.bw to i64 ; 2 uses
  %xtraiter121 = and i64 %wide.trip.count260.i, 7 ; 3 uses
  %i.tt = icmp ult i32 %i.bw, 8
  br i1 %i.tt, label %.critedge166.i.epil.preheader, label %.critedge166.lr.ph.i.new

.critedge166.lr.ph.i.new:                         ; preds = %.critedge166.lr.ph.i
  %unroll_iter128 = and i64 %wide.trip.count260.i, 2147483640
  br label %.critedge166.i

.critedge164.i:                                   ; preds = %.critedge164.i, %.critedge164.lr.ph.i.new
  %indvars.iv252.i = phi i64 [ 0, %.critedge164.lr.ph.i.new ], [ %indvars.iv.next253.i.7, %.critedge164.i ] ; 9 uses
  %i.tu = phi <8 x i32> [ %i.ol, %.critedge164.lr.ph.i.new ], [ %i.vx, %.critedge164.i ]
  %niter120 = phi i64 [ 0, %.critedge164.lr.ph.i.new ], [ %niter120.next.7, %.critedge164.i ]
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv252.i
  %i.tw = load i32, ptr %i.tv, align 8, !tbaa !31
  %i.tx = zext i32 %i.tw to i64
  %.idx184.i = shl nuw nsw i64 %i.tx, 5
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tj, i64 %.idx184.i
  %i.tz = load <8 x i32>, ptr %i.ty, align 32, !tbaa !26
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv252.i
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 4
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !31
  %i.ud = zext i32 %i.uc to i64
  %.idx184.i.1 = shl nuw nsw i64 %i.ud, 5
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tj, i64 %.idx184.i.1
  %i.uf = load <8 x i32>, ptr %i.ue, align 32, !tbaa !26
  %i.ug = add <8 x i32> %i.tz, %i.uf
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv252.i
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  %i.uj = load i32, ptr %i.ui, align 8, !tbaa !31
  %i.uk = zext i32 %i.uj to i64
  %.idx184.i.2 = shl nuw nsw i64 %i.uk, 5
  %i.ul = getelementptr inbounds nuw i8, ptr %i.tj, i64 %.idx184.i.2
  %i.um = load <8 x i32>, ptr %i.ul, align 32, !tbaa !26
  %i.un = add <8 x i32> %i.ug, %i.um
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv252.i
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 12
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !31
  %i.ur = zext i32 %i.uq to i64
  %.idx184.i.3 = shl nuw nsw i64 %i.ur, 5
  %i.us = getelementptr inbounds nuw i8, ptr %i.tj, i64 %.idx184.i.3
  %i.ut = load <8 x i32>, ptr %i.us, align 32, !tbaa !26
  %i.uu = add <8 x i32> %i.un, %i.ut
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv252.i
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 16
  %i.ux = load i32, ptr %i.uw, align 8, !tbaa !31
  %i.uy = zext i32 %i.ux to i64
  %.idx184.i.4 = shl nuw nsw i64 %i.uy, 5
  %i.uz = getelementptr inbounds nuw i8, ptr %i.tj, i64 %.idx184.i.4
  %i.va = load <8 x i32>, ptr %i.uz, align 32, !tbaa !26
  %i.vb = add <8 x i32> %i.uu, %i.va
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv252.i
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 20
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !31
  %i.vf = zext i32 %i.ve to i64
  %.idx184.i.5 = shl nuw nsw i64 %i.vf, 5
  %i.vg = getelementptr inbounds nuw i8, ptr %i.tj, i64 %.idx184.i.5
  %i.vh = load <8 x i32>, ptr %i.vg, align 32, !tbaa !26
  %i.vi = add <8 x i32> %i.vb, %i.vh
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv252.i
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 24
  %i.vl = load i32, ptr %i.vk, align 8, !tbaa !31
  %i.vm = zext i32 %i.vl to i64
  %.idx184.i.6 = shl nuw nsw i64 %i.vm, 5
  %i.vn = getelementptr inbounds nuw i8, ptr %i.tj, i64 %.idx184.i.6
  %i.vo = load <8 x i32>, ptr %i.vn, align 32, !tbaa !26
  %i.vp = add <8 x i32> %i.vi, %i.vo
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv252.i
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 28
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !31
  %i.vt = zext i32 %i.vs to i64
  %.idx184.i.7 = shl nuw nsw i64 %i.vt, 5
  %i.vu = getelementptr inbounds nuw i8, ptr %i.tj, i64 %.idx184.i.7
  %i.vv = load <8 x i32>, ptr %i.vu, align 32, !tbaa !26
  %i.vw = add <8 x i32> %i.vp, %i.vv
  %i.vx = sub <8 x i32> %i.tu, %i.vw              ; 3 uses
  %indvars.iv.next253.i.7 = add nuw nsw i64 %indvars.iv252.i, 8 ; 2 uses
  %niter120.next.7 = add i64 %niter120, 8         ; 2 uses
  %niter120.ncmp.7 = icmp eq i64 %niter120.next.7, %unroll_iter119
  br i1 %niter120.ncmp.7, label %.preheader.i.loopexit.unr-lcssa, label %.critedge164.i, !llvm.loop !87

.critedge166.i:                                   ; preds = %.critedge166.i, %.critedge166.lr.ph.i.new
  %indvars.iv257.i = phi i64 [ 0, %.critedge166.lr.ph.i.new ], [ %indvars.iv.next258.i.7, %.critedge166.i ] ; 9 uses
  %i.vy = phi <8 x i32> [ %.lcssa191.i, %.critedge166.lr.ph.i.new ], [ %i.yb, %.critedge166.i ]
  %niter129 = phi i64 [ 0, %.critedge166.lr.ph.i.new ], [ %niter129.next.7, %.critedge166.i ]
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv257.i
  %i.wa = load i32, ptr %i.vz, align 8, !tbaa !31
  %i.wb = zext i32 %i.wa to i64
  %.idx183.i = shl nuw nsw i64 %i.wb, 5
  %i.wc = getelementptr inbounds nuw i8, ptr %i.ts, i64 %.idx183.i
  %i.wd = load <8 x i32>, ptr %i.wc, align 32, !tbaa !26
  %i.we = add <8 x i32> %i.wd, %i.vy
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv257.i
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 4
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !31
  %i.wi = zext i32 %i.wh to i64
  %.idx183.i.1 = shl nuw nsw i64 %i.wi, 5
  %i.wj = getelementptr inbounds nuw i8, ptr %i.ts, i64 %.idx183.i.1
  %i.wk = load <8 x i32>, ptr %i.wj, align 32, !tbaa !26
  %i.wl = add <8 x i32> %i.wk, %i.we
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv257.i
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 8
  %i.wo = load i32, ptr %i.wn, align 8, !tbaa !31
  %i.wp = zext i32 %i.wo to i64
  %.idx183.i.2 = shl nuw nsw i64 %i.wp, 5
  %i.wq = getelementptr inbounds nuw i8, ptr %i.ts, i64 %.idx183.i.2
  %i.wr = load <8 x i32>, ptr %i.wq, align 32, !tbaa !26
  %i.ws = add <8 x i32> %i.wr, %i.wl
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv257.i
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 12
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !31
  %i.ww = zext i32 %i.wv to i64
  %.idx183.i.3 = shl nuw nsw i64 %i.ww, 5
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ts, i64 %.idx183.i.3
  %i.wy = load <8 x i32>, ptr %i.wx, align 32, !tbaa !26
  %i.wz = add <8 x i32> %i.wy, %i.ws
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv257.i
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 16
  %i.xc = load i32, ptr %i.xb, align 8, !tbaa !31
  %i.xd = zext i32 %i.xc to i64
  %.idx183.i.4 = shl nuw nsw i64 %i.xd, 5
  %i.xe = getelementptr inbounds nuw i8, ptr %i.ts, i64 %.idx183.i.4
  %i.xf = load <8 x i32>, ptr %i.xe, align 32, !tbaa !26
  %i.xg = add <8 x i32> %i.xf, %i.wz
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv257.i
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 20
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !31
  %i.xk = zext i32 %i.xj to i64
  %.idx183.i.5 = shl nuw nsw i64 %i.xk, 5
  %i.xl = getelementptr inbounds nuw i8, ptr %i.ts, i64 %.idx183.i.5
  %i.xm = load <8 x i32>, ptr %i.xl, align 32, !tbaa !26
  %i.xn = add <8 x i32> %i.xm, %i.xg
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv257.i
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 24
  %i.xq = load i32, ptr %i.xp, align 8, !tbaa !31
  %i.xr = zext i32 %i.xq to i64
  %.idx183.i.6 = shl nuw nsw i64 %i.xr, 5
  %i.xs = getelementptr inbounds nuw i8, ptr %i.ts, i64 %.idx183.i.6
  %i.xt = load <8 x i32>, ptr %i.xs, align 32, !tbaa !26
  %i.xu = add <8 x i32> %i.xt, %i.xn
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv257.i
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 28
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !31
  %i.xy = zext i32 %i.xx to i64
  %.idx183.i.7 = shl nuw nsw i64 %i.xy, 5
  %i.xz = getelementptr inbounds nuw i8, ptr %i.ts, i64 %.idx183.i.7
  %i.ya = load <8 x i32>, ptr %i.xz, align 32, !tbaa !26
  %i.yb = add <8 x i32> %i.ya, %i.xu              ; 3 uses
  %indvars.iv.next258.i.7 = add nuw nsw i64 %indvars.iv257.i, 8 ; 2 uses
  %niter129.next.7 = add i64 %niter129, 8         ; 2 uses
  %niter129.ncmp.7 = icmp eq i64 %niter129.next.7, %unroll_iter128
  br i1 %niter129.ncmp.7, label %_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_132update_accumulator_refresh_cacheILj128EEEvNS_5ColorERKNS1_18FeatureTransformerIXT_EEERKNS_8PositionERNS1_16AccumulatorStateINS1_8Features11HalfKAv2_hmEEERNS1_17AccumulatorCaches5CacheIXT_EEE.exit.loopexit.unr-lcssa, label %.critedge166.i, !llvm.loop !88

_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_132update_accumulator_refresh_cacheILj128EEEvNS_5ColorERKNS1_18FeatureTransformerIXT_EEERKNS_8PositionERNS1_16AccumulatorStateINS1_8Features11HalfKAv2_hmEEERNS1_17AccumulatorCaches5CacheIXT_EEE.exit.loopexit.unr-lcssa: ; preds = %.critedge166.i
  %lcmp.mod125.not = icmp eq i64 %xtraiter121, 0
  br i1 %lcmp.mod125.not, label %_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_132update_accumulator_refresh_cacheILj128EEEvNS_5ColorERKNS1_18FeatureTransformerIXT_EEERKNS_8PositionERNS1_16AccumulatorStateINS1_8Features11HalfKAv2_hmEEERNS1_17AccumulatorCaches5CacheIXT_EEE.exit, label %.critedge166.i.epil.preheader

.critedge166.i.epil.preheader:                    ; preds = %_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_132update_accumulator_refresh_cacheILj128EEEvNS_5ColorERKNS1_18FeatureTransformerIXT_EEERKNS_8PositionERNS1_16AccumulatorStateINS1_8Features11HalfKAv2_hmEEERNS1_17AccumulatorCaches5CacheIXT_EEE.exit.loopexit.unr-lcssa, %.critedge166.lr.ph.i
  %indvars.iv257.i.epil.init = phi i64 [ 0, %.critedge166.lr.ph.i ], [ %indvars.iv.next258.i.7, %_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_132update_accumulator_refresh_cacheILj128EEEvNS_5ColorERKNS1_18FeatureTransformerIXT_EEERKNS_8PositionERNS1_16AccumulatorStateINS1_8Features11HalfKAv2_hmEEERNS1_17AccumulatorCaches5CacheIXT_EEE.exit.loopexit.unr-lcssa ]
  %.epil.init124 = phi <8 x i32> [ %.lcssa191.i, %.critedge166.lr.ph.i ], [ %i.yb, %_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_132update_accumulator_refresh_cacheILj128EEEvNS_5ColorERKNS1_18FeatureTransformerIXT_EEERKNS_8PositionERNS1_16AccumulatorStateINS1_8Features11HalfKAv2_hmEEERNS1_17AccumulatorCaches5CacheIXT_EEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod127 = icmp ne i64 %xtraiter121, 0
  tail call void @llvm.assume(i1 %lcmp.mod127)
  br label %.critedge166.i.epil

.critedge166.i.epil:                              ; preds = %.critedge166.i.epil, %.critedge166.i.epil.preheader
  %indvars.iv257.i.epil = phi i64 [ %indvars.iv257.i.epil.init, %.critedge166.i.epil.preheader ], [ %indvars.iv.next258.i.epil, %.critedge166.i.epil ] ; 2 uses
  %i.yc = phi <8 x i32> [ %.epil.init124, %.critedge166.i.epil.preheader ], [ %i.yi, %.critedge166.i.epil ]
  %epil.iter122 = phi i64 [ 0, %.critedge166.i.epil.preheader ], [ %epil.iter122.next, %.critedge166.i.epil ]
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv257.i.epil
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !31
  %i.yf = zext i32 %i.ye to i64
  %.idx183.i.epil = shl nuw nsw i64 %i.yf, 5
  %i.yg = getelementptr inbounds nuw i8, ptr %i.ts, i64 %.idx183.i.epil
  %i.yh = load <8 x i32>, ptr %i.yg, align 32, !tbaa !26
  %i.yi = add <8 x i32> %i.yh, %i.yc              ; 2 uses
  %indvars.iv.next258.i.epil = add nuw nsw i64 %indvars.iv257.i.epil, 1
  %epil.iter122.next = add i64 %epil.iter122, 1   ; 2 uses
  %epil.iter122.cmp.not = icmp eq i64 %epil.iter122.next, %xtraiter121
  br i1 %epil.iter122.cmp.not, label %_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_132update_accumulator_refresh_cacheILj128EEEvNS_5ColorERKNS1_18FeatureTransformerIXT_EEERKNS_8PositionERNS1_16AccumulatorStateINS1_8Features11HalfKAv2_hmEEERNS1_17AccumulatorCaches5CacheIXT_EEE.exit, label %.critedge166.i.epil, !llvm.loop !89

_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_132update_accumulator_refresh_cacheILj128EEEvNS_5ColorERKNS1_18FeatureTransformerIXT_EEERKNS_8PositionERNS1_16AccumulatorStateINS1_8Features11HalfKAv2_hmEEERNS1_17AccumulatorCaches5CacheIXT_EEE.exit: ; preds = %_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_132update_accumulator_refresh_cacheILj128EEEvNS_5ColorERKNS1_18FeatureTransformerIXT_EEERKNS_8PositionERNS1_16AccumulatorStateINS1_8Features11HalfKAv2_hmEEERNS1_17AccumulatorCaches5CacheIXT_EEE.exit.loopexit.unr-lcssa, %.critedge166.i.epil, %.preheader.i
  %.lcssa.i = phi <8 x i32> [ %.lcssa191.i, %.preheader.i ], [ %i.yb, %_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_132update_accumulator_refresh_cacheILj128EEEvNS_5ColorERKNS1_18FeatureTransformerIXT_EEERKNS_8PositionERNS1_16AccumulatorStateINS1_8Features11HalfKAv2_hmEEERNS1_17AccumulatorCaches5CacheIXT_EEE.exit.loopexit.unr-lcssa ], [ %i.yi, %.critedge166.i.epil ] ; 2 uses
  %i.yj = getelementptr i8, ptr %i.q, i64 -192
  %i.yk = getelementptr inbounds nuw [32 x i8], ptr %i.yj, i64 %i.c
  store <8 x i32> %.lcssa.i, ptr %i.ok, align 64, !tbaa !26
  store <8 x i32> %.lcssa.i, ptr %i.yk, align 32, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  tail call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack27backward_update_incrementalINS1_8Features11HalfKAv2_hmELj128EEEvNS_5ColorERKNS_8PositionERKNS1_18FeatureTransformerIXT0_EEEm(ptr noundef nonnull align 64 dereferenceable(2529288) %0, i8 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(1048) %2, ptr noundef nonnull align 64 dereferenceable(6488448) %3, i64 noundef %.010.i.lcssa) #11
  br label %bb.f

bb.f:                                             ; preds = %_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_132update_accumulator_refresh_cacheILj128EEEvNS_5ColorERKNS1_18FeatureTransformerIXT_EEERKNS_8PositionERNS1_16AccumulatorStateINS1_8Features11HalfKAv2_hmEEERNS1_17AccumulatorCaches5CacheIXT_EEE.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack5resetEv(ptr nofree noundef nonnull writeonly align 64 captures(none) dereferenceable(2529288) initializes((4160, 4162), (4800, 4802), (4864, 4871), (1221376, 1221378), (1222016, 1222018), (1222080, 1222475), (1222480, 1222496), (2529280, 2529288)) %0) local_unnamed_addr #3 align 2 !guid !94 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4864
  store i32 0, ptr %i.a, align 64
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4868
  store i16 0, ptr %.sroa.76.0..sroa_idx, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4870
  store i8 0, ptr %i.b, align 2, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4160
  store i16 0, ptr %i.c, align 64
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 4800
  store i16 0, ptr %1, align 64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1222080
  %.sroa.81.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1222480
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1221376
  store i16 0, ptr %i.e, align 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1222016
  store i16 0, ptr %i.f, align 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(395) %i.d, i8 0, i64 395, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.81.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2529280
  store i64 1, ptr %i.g, align 64, !tbaa !17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local { ptr, ptr } @_ZN9Stockfish4Eval4NNUE16AccumulatorStack4pushEv(ptr noundef nonnull align 64 dereferenceable(2529288) %0) local_unnamed_addr #5 align 2 !guid !95 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2529280 ; 2 uses
  %i.b = load i64, ptr %i.a, align 64, !tbaa !17  ; 3 uses
  %i.c = getelementptr inbounds nuw [4928 x i8], ptr %0, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4160
  store i16 0, ptr %i.d, align 64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4800
  store i16 0, ptr %i.e, align 64
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4864
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1217216
  %i.h = getelementptr inbounds nuw [5312 x i8], ptr %i.g, i64 %i.b ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4160
  store i16 0, ptr %i.i, align 64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4800
  store i16 0, ptr %i.j, align 64
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4864
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 5248
  store i64 0, ptr %i.l, align 64, !tbaa !96
  %i.m = add i64 %i.b, 1
  store i64 %i.m, ptr %i.a, align 64, !tbaa !17
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %i.k, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack3popEv(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(2529288) %0) local_unnamed_addr #5 align 2 !guid !97 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2529280 ; 2 uses
  %i.b = load i64, ptr %i.a, align 64, !tbaa !17
  %i.c = add i64 %i.b, -1
  store i64 %i.c, ptr %i.a, align 64, !tbaa !17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack26forward_update_incrementalINS1_8Features11HalfKAv2_hmELj1024EEEvNS_5ColorERKNS_8PositionERKNS1_18FeatureTransformerIXT0_EEEm(ptr noundef nonnull align 64 dereferenceable(2529288) %0, i8 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(1048) %2, ptr noundef nonnull align 64 dereferenceable(131188224) %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 !guid !101 {
bb.a:
  %5 = alloca %"class.Stockfish::ValueList.26", align 8 ; 8 uses
  %6 = alloca %"class.Stockfish::ValueList.26", align 8 ; 7 uses
  %7 = alloca %"class.Stockfish::ValueList.26", align 8 ; 8 uses
  %8 = alloca %"class.Stockfish::ValueList.26", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.b = zext i8 %1 to i64                        ; 23 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.f = load i64, ptr %i.e, align 8, !tbaa !23
  %i.g = and i64 %i.f, %i.d
  %i.h = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.g, i1 true)
  %i.i = trunc nuw nsw i64 %i.h to i8             ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2529280 ; 2 uses
  %.03376 = add i64 %4, 1                         ; 2 uses
  %i.k = load i64, ptr %i.j, align 64, !tbaa !17  ; 2 uses
  %i.l = icmp ult i64 %.03376, %i.k
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 128 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 2048 ; 16 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 127911936 ; 16 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.r, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.r
  %i.w = phi i64 [ %i.k, %.lr.ph ], [ %i.qx, %bb.r ]
  %.03378 = phi i64 [ %.03376, %.lr.ph ], [ %.033, %bb.r ] ; 3 uses
  %.033.in77 = phi i64 [ %4, %.lr.ph ], [ %.3, %bb.r ] ; 3 uses
  %i.x = add i64 %.033.in77, 2                    ; 3 uses
  %i.y = icmp ult i64 %i.x, %i.w
  br i1 %i.y, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw [4928 x i8], ptr %0, i64 %.03378 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4928 x i8], ptr %0, i64 %i.x ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 4866 ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !47  ; 4 uses
  %.not = icmp eq i8 %i.ac, 64
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 4867 ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !48
  %i.af = icmp eq i8 %i.ac, %i.ae
  br i1 %i.af, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  store i8 64, ptr %i.ad, align 1, !tbaa !48
  store i8 64, ptr %i.ab, align 2, !tbaa !47
  %i.ag = getelementptr inbounds nuw [4928 x i8], ptr %0, i64 %.033.in77 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  store i64 0, ptr %i.m, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  store i64 0, ptr %i.n, align 8, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 4864
  call void @_ZN9Stockfish4Eval4NNUE8Features11HalfKAv2_hm22append_changed_indicesENS_5ColorENS_6SquareERKNS_10DirtyPieceERNS_9ValueListIjLm32EEESB_(i8 noundef zeroext %1, i8 noundef zeroext %i.i, ptr noundef nonnull align 1 dereferenceable(7) %i.ah, ptr noundef nonnull align 8 dereferenceable(136) %7, ptr noundef nonnull align 8 dereferenceable(136) %8) #11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 4864
  call void @_ZN9Stockfish4Eval4NNUE8Features11HalfKAv2_hm22append_changed_indicesENS_5ColorENS_6SquareERKNS_10DirtyPieceERNS_9ValueListIjLm32EEESB_(i8 noundef zeroext %1, i8 noundef zeroext %i.i, ptr noundef nonnull align 1 dereferenceable(7) %i.ai, ptr noundef nonnull align 8 dereferenceable(136) %7, ptr noundef nonnull align 8 dereferenceable(136) %8) #11
  %i.aj = load i64, ptr %i.m, align 8, !tbaa !25
  %i.ak = icmp eq i64 %i.aj, 2
  %i.al = load i32, ptr %8, align 8, !tbaa !31    ; 4 uses
  %i.am = load i32, ptr %7, align 8, !tbaa !31    ; 4 uses
  %i.an = load i32, ptr %i.o, align 4, !tbaa !31  ; 4 uses
  br i1 %i.ak, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw [2048 x i8], ptr %i.ag, i64 %i.b ; 4 uses
  %i.ap = getelementptr inbounds nuw [2048 x i8], ptr %i.aa, i64 %i.b ; 4 uses
  %i.aq = shl i32 %i.al, 10
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.ar ; 4 uses
  %i.at = shl i32 %i.am, 10
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.au ; 4 uses
  %i.aw = shl i32 %i.an, 10
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.ax ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.i.i.i = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.i.i.i.3, %bb.g ] ; 9 uses
  %i.az = getelementptr inbounds nuw [64 x i8], ptr %i.ao, i64 %indvars.iv.i.i.i
  %i.ba = getelementptr inbounds nuw [64 x i8], ptr %i.as, i64 %indvars.iv.i.i.i
  %i.bb = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %indvars.iv.i.i.i
  %i.bc = getelementptr inbounds nuw [64 x i8], ptr %i.ay, i64 %indvars.iv.i.i.i
  %i.bd = load <32 x i16>, ptr %i.az, align 64, !tbaa !26
  %i.be = load <32 x i16>, ptr %i.ba, align 64, !tbaa !26
  %i.bf = load <32 x i16>, ptr %i.bb, align 64, !tbaa !26
  %i.bg = load <32 x i16>, ptr %i.bc, align 64, !tbaa !26
  %.neg65 = add <32 x i16> %i.be, %i.bd
  %i.bh = add <32 x i16> %i.bf, %i.bg
  %i.bi = sub <32 x i16> %.neg65, %i.bh
  %i.bj = getelementptr inbounds nuw [64 x i8], ptr %i.ap, i64 %indvars.iv.i.i.i
  store <32 x i16> %i.bi, ptr %i.bj, align 64, !tbaa !26
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 5 uses
  %i.bk = getelementptr inbounds nuw [64 x i8], ptr %i.ao, i64 %indvars.iv.next.i.i.i
  %i.bl = getelementptr inbounds nuw [64 x i8], ptr %i.as, i64 %indvars.iv.next.i.i.i
  %i.bm = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %indvars.iv.next.i.i.i
  %i.bn = getelementptr inbounds nuw [64 x i8], ptr %i.ay, i64 %indvars.iv.next.i.i.i
  %i.bo = load <32 x i16>, ptr %i.bk, align 64, !tbaa !26
  %i.bp = load <32 x i16>, ptr %i.bl, align 64, !tbaa !26
  %i.bq = load <32 x i16>, ptr %i.bm, align 64, !tbaa !26
  %i.br = load <32 x i16>, ptr %i.bn, align 64, !tbaa !26
  %.neg65.1 = add <32 x i16> %i.bp, %i.bo
  %i.bs = add <32 x i16> %i.bq, %i.br
  %i.bt = sub <32 x i16> %.neg65.1, %i.bs
  %i.bu = getelementptr inbounds nuw [64 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i.i
  store <32 x i16> %i.bt, ptr %i.bu, align 64, !tbaa !26
  %indvars.iv.next.i.i.i.1 = or disjoint i64 %indvars.iv.i.i.i, 2 ; 5 uses
  %i.bv = getelementptr inbounds nuw [64 x i8], ptr %i.ao, i64 %indvars.iv.next.i.i.i.1
  %i.bw = getelementptr inbounds nuw [64 x i8], ptr %i.as, i64 %indvars.iv.next.i.i.i.1
  %i.bx = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %indvars.iv.next.i.i.i.1
  %i.by = getelementptr inbounds nuw [64 x i8], ptr %i.ay, i64 %indvars.iv.next.i.i.i.1
  %i.bz = load <32 x i16>, ptr %i.bv, align 64, !tbaa !26
  %i.ca = load <32 x i16>, ptr %i.bw, align 64, !tbaa !26
  %i.cb = load <32 x i16>, ptr %i.bx, align 64, !tbaa !26
  %i.cc = load <32 x i16>, ptr %i.by, align 64, !tbaa !26
  %.neg65.2 = add <32 x i16> %i.ca, %i.bz
  %i.cd = add <32 x i16> %i.cb, %i.cc
  %i.ce = sub <32 x i16> %.neg65.2, %i.cd
  %i.cf = getelementptr inbounds nuw [64 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i.i.1
  store <32 x i16> %i.ce, ptr %i.cf, align 64, !tbaa !26
  %indvars.iv.next.i.i.i.2 = or disjoint i64 %indvars.iv.i.i.i, 3 ; 5 uses
  %i.cg = getelementptr inbounds nuw [64 x i8], ptr %i.ao, i64 %indvars.iv.next.i.i.i.2
  %i.ch = getelementptr inbounds nuw [64 x i8], ptr %i.as, i64 %indvars.iv.next.i.i.i.2
  %i.ci = getelementptr inbounds nuw [64 x i8], ptr %i.av, i64 %indvars.iv.next.i.i.i.2
  %i.cj = getelementptr inbounds nuw [64 x i8], ptr %i.ay, i64 %indvars.iv.next.i.i.i.2
  %i.ck = load <32 x i16>, ptr %i.cg, align 64, !tbaa !26
  %i.cl = load <32 x i16>, ptr %i.ch, align 64, !tbaa !26
  %i.cm = load <32 x i16>, ptr %i.ci, align 64, !tbaa !26
end_hunk_0

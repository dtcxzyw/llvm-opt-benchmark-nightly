Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution_x86_fma?download=true
inline.NumInlined: 22
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZNK4ncnn21Deconvolution_x86_fma13forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.tj = bitcast <8 x i16> %i.ti to <4 x float>
  %i.tk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink3690.i, <4 x float> nofpclass(nan inf) %i.tj, <4 x float> nofpclass(nan inf) %.224262584.us.us.i)
  %i.tl = getelementptr inbounds nuw i8, ptr %i.kq, i64 32
  %i.tm = load i64, ptr %i.tl, align 1, !tbaa !82
  %i.tn = insertelement <2 x i64> poison, i64 %i.tm, i64 0
  %i.to = bitcast <2 x i64> %i.tn to <8 x i16>
  %i.tp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.to, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tq = bitcast <8 x i16> %i.tp to <4 x float>
  %i.tr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink3682.i, <4 x float> nofpclass(nan inf) %i.tq, <4 x float> nofpclass(nan inf) %i.sp)
  %i.ts = getelementptr inbounds nuw i8, ptr %i.kq, i64 40
  %i.tt = load i64, ptr %i.ts, align 1, !tbaa !82
  %i.tu = insertelement <2 x i64> poison, i64 %i.tt, i64 0
  %i.tv = bitcast <2 x i64> %i.tu to <8 x i16>
  %i.tw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.tv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tx = bitcast <8 x i16> %i.tw to <4 x float>
  %i.ty = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink3674.i, <4 x float> nofpclass(nan inf) %i.tx, <4 x float> nofpclass(nan inf) %i.sw)
  %i.tz = getelementptr inbounds nuw i8, ptr %i.kq, i64 48
  %i.ua = load i64, ptr %i.tz, align 1, !tbaa !82
  %i.ub = insertelement <2 x i64> poison, i64 %i.ua, i64 0
  %i.uc = bitcast <2 x i64> %i.ub to <8 x i16>
  %i.ud = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.uc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ue = bitcast <8 x i16> %i.ud to <4 x float>
  %i.uf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink3666.i, <4 x float> nofpclass(nan inf) %i.ue, <4 x float> nofpclass(nan inf) %i.td)
  %i.ug = getelementptr inbounds nuw i8, ptr %i.kq, i64 56
  %i.uh = load i64, ptr %i.ug, align 1, !tbaa !82
  %i.ui = insertelement <2 x i64> poison, i64 %i.uh, i64 0
  %i.uj = bitcast <2 x i64> %i.ui to <8 x i16>
  %i.uk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.uj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ul = bitcast <8 x i16> %i.uk to <4 x float>
  %i.um = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sj, <4 x float> nofpclass(nan inf) %i.ul, <4 x float> nofpclass(nan inf) %i.tk)
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split.i, %bb.ac, %bb.ab, %bb.aa
  %.32427.us.us.i = phi nsz <4 x float> [ %.224262584.us.us.i, %bb.aa ], [ %.224262584.us.us.i, %bb.ac ], [ %.224262584.us.us.i, %bb.ab ], [ %i.um, %.sink.split.i ] ; 2 uses
  %.32417.us.us.i = phi nsz <4 x float> [ %.224162585.us.us.i, %bb.aa ], [ %.224162585.us.us.i, %bb.ac ], [ %.224162585.us.us.i, %bb.ab ], [ %i.uf, %.sink.split.i ] ; 2 uses
  %.32402.us.us.i = phi nsz <4 x float> [ %.224012586.us.us.i, %bb.aa ], [ %.224012586.us.us.i, %bb.ac ], [ %.224012586.us.us.i, %bb.ab ], [ %i.ty, %.sink.split.i ] ; 2 uses
  %.42386.us.us.i = phi nsz <4 x float> [ %.323852587.us.us.i, %bb.aa ], [ %.323852587.us.us.i, %bb.ac ], [ %.323852587.us.us.i, %bb.ab ], [ %i.tr, %.sink.split.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.jq
  br i1 %exitcond.not.i, label %..loopexit2574_crit_edge.us.us.i, label %bb.aa, !llvm.loop !535

..loopexit2574_crit_edge.us.us.i:                 ; preds = %bb.ad, %bb.z, %.lr.ph2597.split.us.us.i
  %.42428.us.us.i = phi nsz <4 x float> [ %.124252592.us.us.i, %.lr.ph2597.split.us.us.i ], [ %.124252592.us.us.i, %bb.z ], [ %.32427.us.us.i, %bb.ad ] ; 2 uses
  %.42418.us.us.i = phi nsz <4 x float> [ %.124152593.us.us.i, %.lr.ph2597.split.us.us.i ], [ %.124152593.us.us.i, %bb.z ], [ %.32417.us.us.i, %bb.ad ] ; 2 uses
  %.42403.us.us.i = phi nsz <4 x float> [ %.124002594.us.us.i, %.lr.ph2597.split.us.us.i ], [ %.124002594.us.us.i, %bb.z ], [ %.32402.us.us.i, %bb.ad ] ; 2 uses
  %.5.us.us.i = phi nsz <4 x float> [ %.223842595.us.us.i, %.lr.ph2597.split.us.us.i ], [ %.223842595.us.us.i, %bb.z ], [ %.42386.us.us.i, %bb.ad ] ; 2 uses
  %indvars.iv.next3337.i = add nuw nsw i64 %indvars.iv3336.i, 1 ; 2 uses
  %exitcond3340.not.i = icmp eq i64 %indvars.iv.next3337.i, %wide.trip.count3339.i
  br i1 %exitcond3340.not.i, label %._crit_edge.us.i, label %.lr.ph2597.split.us.us.i, !llvm.loop !536

._crit_edge.us.i:                                 ; preds = %..loopexit2574_crit_edge.us.us.i, %.preheader2578.us.i
  %.us-phi.us.i = phi <4 x float> [ %.024242607.us.i, %.preheader2578.us.i ], [ %.42428.us.us.i, %..loopexit2574_crit_edge.us.us.i ] ; 2 uses
  %.us-phi2604.us.i = phi <4 x float> [ %.024142608.us.i, %.preheader2578.us.i ], [ %.42418.us.us.i, %..loopexit2574_crit_edge.us.us.i ] ; 2 uses
  %.us-phi2605.us.i = phi <4 x float> [ %.023992609.us.i, %.preheader2578.us.i ], [ %.42403.us.us.i, %..loopexit2574_crit_edge.us.us.i ] ; 2 uses
  %.us-phi2606.us.i = phi <4 x float> [ %.123832610.us.i, %.preheader2578.us.i ], [ %.5.us.us.i, %..loopexit2574_crit_edge.us.us.i ] ; 2 uses
  %i.un = getelementptr inbounds [2 x i8], ptr %.07512612.us.i, i64 %i.ir ; 2 uses
  %indvars.iv.next3342.i = add nuw nsw i64 %indvars.iv3341.i, 8 ; 2 uses
  %i.uo = icmp slt i64 %indvars.iv.next3342.i, %invariant.op3656.i
  br i1 %i.uo, label %.preheader2578.us.i, label %.preheader2581.i, !llvm.loop !537

.preheader2581.i:                                 ; preds = %._crit_edge.us.i, %.preheader2578.preheader.i, %_ZN4ncnn3MatD2Ev.exit977.i
  %.02424.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit977.i ], [ zeroinitializer, %.preheader2578.preheader.i ], [ %.us-phi.us.i, %._crit_edge.us.i ] ; 4 uses
  %.02414.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit977.i ], [ zeroinitializer, %.preheader2578.preheader.i ], [ %.us-phi2604.us.i, %._crit_edge.us.i ] ; 4 uses
  %.02399.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit977.i ], [ zeroinitializer, %.preheader2578.preheader.i ], [ %.us-phi2605.us.i, %._crit_edge.us.i ] ; 4 uses
  %.12383.lcssa.i = phi <4 x float> [ %.02382.i, %_ZN4ncnn3MatD2Ev.exit977.i ], [ %.02382.i, %.preheader2578.preheader.i ], [ %.us-phi2606.us.i, %._crit_edge.us.i ] ; 4 uses
  %.0756.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit977.i ], [ %i.ij, %.preheader2578.preheader.i ], [ %i.ij, %._crit_edge.us.i ] ; 7 uses
  %.0751.lcssa.i = phi ptr [ %i.jh, %_ZN4ncnn3MatD2Ev.exit977.i ], [ %scevgep3334.i, %.preheader2578.preheader.i ], [ %i.un, %._crit_edge.us.i ] ; 4 uses
  %i.up = or disjoint i32 %.0756.lcssa.i, 3       ; 2 uses
  %i.uq = icmp slt i32 %i.up, %i.he
  br i1 %i.uq, label %.preheader2577.lr.ph.i, label %.preheader2580.i

.preheader2577.lr.ph.i:                           ; preds = %.preheader2581.i
  %i.ur = load i32, ptr %i.d, align 4             ; 2 uses
  %i.us = load i32, ptr %i.j, align 4
  %invariant.op2678.i = sub i32 %.neg2536.i, %i.us ; 2 uses
  %i.ut = load i32, ptr %i.f, align 4             ; 4 uses
  %i.uu = load i32, ptr %i.a, align 4
  %.fr.i = freeze i32 %i.uu                       ; 2 uses
  %i.uv = load i32, ptr %i.c, align 4             ; 2 uses
  %i.uw = load i32, ptr %i.i, align 4
  %.neg2534.i = add nuw nsw i32 %.07482801.i, 1
  %invariant.op2642.i = sub i32 %.neg2534.i, %i.uw ; 2 uses
  %i.ux = load i32, ptr %i.e, align 4             ; 4 uses
  br i1 %i.io, label %.preheader2577.lr.ph.split.us.i, label %.preheader2577.preheader.i

.preheader2577.preheader.i:                       ; preds = %.preheader2577.lr.ph.i
  %i.uy = sub i32 %i.il, %.0756.lcssa.i           ; 2 uses
  %i.uz = lshr i32 %i.uy, 1
  %i.va = and i32 %i.uz, 2147483646
  %narrow3632.i = add nuw i32 %i.va, 2
  %i.vb = zext i32 %narrow3632.i to i64
  %i.vc = mul nsw i64 %i.vb, %i.it
  %scevgep3344.i = getelementptr i8, ptr %.0751.lcssa.i, i64 %i.vc
  %i.vd = add i32 %.0756.lcssa.i, 4
  %i.ve = and i32 %i.uy, -4
  %i.vf = add i32 %i.vd, %i.ve
  br label %.preheader2580.i

.preheader2577.lr.ph.split.us.i:                  ; preds = %.preheader2577.lr.ph.i
  %i.vg = icmp sgt i32 %.fr.i, 0
  br i1 %i.vg, label %.preheader2577.us.us.preheader.i, label %.preheader2577.us.preheader.i

.preheader2577.us.preheader.i:                    ; preds = %.preheader2577.lr.ph.split.us.i
  %i.vh = sub i32 %i.il, %.0756.lcssa.i           ; 2 uses
  %i.vi = lshr i32 %i.vh, 1
  %i.vj = and i32 %i.vi, 2147483646
  %narrow3633.i = add nuw i32 %i.vj, 2
  %i.vk = zext i32 %narrow3633.i to i64
  %i.vl = mul nsw i64 %i.vk, %i.it
  %scevgep3345.i = getelementptr i8, ptr %.0751.lcssa.i, i64 %i.vl
  %i.vm = add i32 %.0756.lcssa.i, 4
  %i.vn = and i32 %i.vh, -4
  %i.vo = add i32 %i.vm, %i.vn
  br label %.preheader2580.i

.preheader2577.us.us.preheader.i:                 ; preds = %.preheader2577.lr.ph.split.us.i
  %i.vp = zext nneg i32 %.fr.i to i64             ; 4 uses
  %i.vq = zext i32 %.0756.lcssa.i to i64
  %i.vr = zext nneg i32 %i.up to i64
  br label %.preheader2577.us.us.i

.preheader2577.us.us.i:                           ; preds = %._crit_edge.split.us.us2714.us.i, %.preheader2577.us.us.preheader.i
  %indvars.iv3361.i = phi i64 [ %i.vq, %.preheader2577.us.us.preheader.i ], [ %indvars.iv.next3362.i, %._crit_edge.split.us.us2714.us.i ] ; 5 uses
  %i.vs = phi i64 [ %i.vr, %.preheader2577.us.us.preheader.i ], [ %i.abv, %._crit_edge.split.us.us2714.us.i ]
  %.17522699.us.us.i = phi ptr [ %.0751.lcssa.i, %.preheader2577.us.us.preheader.i ], [ %i.abu, %._crit_edge.split.us.us2714.us.i ] ; 3 uses
  %.623872697.us.us.i = phi <4 x float> [ %.12383.lcssa.i, %.preheader2577.us.us.preheader.i ], [ %.us-phi76, %._crit_edge.split.us.us2714.us.i ] ; 3 uses
  %.524042696.us.us.i = phi <4 x float> [ %.02399.lcssa.i, %.preheader2577.us.us.preheader.i ], [ %.us-phi75, %._crit_edge.split.us.us2714.us.i ] ; 3 uses
  %.524192695.us.us.i = phi <4 x float> [ %.02414.lcssa.i, %.preheader2577.us.us.preheader.i ], [ %.us-phi74, %._crit_edge.split.us.us2714.us.i ] ; 3 uses
  %.524292694.us.us.i = phi <4 x float> [ %.02424.lcssa.i, %.preheader2577.us.us.preheader.i ], [ %.us-phi, %._crit_edge.split.us.us2714.us.i ] ; 3 uses
  %i.vt = add nuw nsw i64 %indvars.iv3361.i, 1
  %i.vu = add nuw nsw i64 %indvars.iv3361.i, 2
  %i.vv = lshr exact i64 %indvars.iv3361.i, 2
  switch i32 %.fr2667.i, label %._crit_edge.split.us.us2714.us.i [
    i32 4, label %.preheader2577.us.us.i.split.us
    i32 1, label %.preheader2577.us.us.i.split.us77
  ]

.preheader2577.us.us.i.split.us:                  ; preds = %.preheader2577.us.us.i, %..loopexit2572_crit_edge.us.us.us.i.us
  %indvars.iv3356.i.us = phi i64 [ %indvars.iv.next3357.i.us, %..loopexit2572_crit_edge.us.us.us.i.us ], [ 0, %.preheader2577.us.us.i ] ; 3 uses
  %.72671.us.us.us.i.us = phi <4 x float> [ %.102390.us.us.us.i.us, %..loopexit2572_crit_edge.us.us.us.i.us ], [ %.623872697.us.us.i, %.preheader2577.us.us.i ] ; 3 uses
  %.624052670.us.us.us.i.us = phi <4 x float> [ %.92408.us.us.us.i.us, %..loopexit2572_crit_edge.us.us.us.i.us ], [ %.524042696.us.us.i, %.preheader2577.us.us.i ] ; 3 uses
  %.624202669.us.us.us.i.us = phi <4 x float> [ %.92423.us.us.us.i.us, %..loopexit2572_crit_edge.us.us.us.i.us ], [ %.524192695.us.us.i, %.preheader2577.us.us.i ] ; 3 uses
  %.624302668.us.us.us.i.us = phi <4 x float> [ %.92433.us.us.us.i.us, %..loopexit2572_crit_edge.us.us.us.i.us ], [ %.524292694.us.us.i, %.preheader2577.us.us.i ] ; 3 uses
  %i.vw = trunc i64 %indvars.iv3356.i.us to i32
  %i.vx = mul i32 %i.ur, %i.vw
  %.reass2679.us.us.us.i.us = add i32 %i.vx, %invariant.op2678.i ; 3 uses
  %i.vy = icmp slt i32 %.reass2679.us.us.us.i.us, 0
  br i1 %i.vy, label %..loopexit2572_crit_edge.us.us.us.i.us, label %bb.ae

bb.ae:                                            ; preds = %.preheader2577.us.us.i.split.us
  %i.vz = srem i32 %.reass2679.us.us.us.i.us, %i.ut
  %i.wa = sdiv i32 %.reass2679.us.us.us.i.us, %i.ut ; 2 uses
  %.not930.us.us.us.i.us = icmp eq i32 %i.vz, 0
  %.not931.us.us.us.i.us = icmp slt i32 %i.wa, %i.hg
  %or.cond302 = select i1 %.not930.us.us.us.i.us, i1 %.not931.us.us.us.i.us, i1 false
  br i1 %or.cond302, label %.preheader2571.us.us.us.i.us, label %..loopexit2572_crit_edge.us.us.us.i.us

.preheader2571.us.us.us.i.us:                     ; preds = %bb.ae
  %i.wb = mul nuw nsw i64 %indvars.iv3356.i.us, %i.vp
  %i.wc = sext i32 %i.wa to i64
  br label %.lr.ph.split.us.us.us.us.i.us

.lr.ph.split.us.us.us.us.i.us:                    ; preds = %.preheader2571.us.us.us.i.us, %bb.ag
  %indvars.iv3351.i.us = phi i64 [ %indvars.iv.next3352.i.us, %bb.ag ], [ 0, %.preheader2571.us.us.us.i.us ] ; 3 uses
  %.823882636.us.us.us.us.i.us = phi <4 x float> [ %.92389.us.us.us.us.i.us, %bb.ag ], [ %.72671.us.us.us.i.us, %.preheader2571.us.us.us.i.us ] ; 3 uses
  %.724062635.us.us.us.us.i.us = phi <4 x float> [ %.82407.us.us.us.us.i.us, %bb.ag ], [ %.624052670.us.us.us.i.us, %.preheader2571.us.us.us.i.us ] ; 3 uses
  %.724212634.us.us.us.us.i.us = phi <4 x float> [ %.82422.us.us.us.us.i.us, %bb.ag ], [ %.624202669.us.us.us.i.us, %.preheader2571.us.us.us.i.us ] ; 3 uses
  %.724312633.us.us.us.us.i.us = phi <4 x float> [ %.82432.us.us.us.us.i.us, %bb.ag ], [ %.624302668.us.us.us.i.us, %.preheader2571.us.us.us.i.us ] ; 3 uses
  %i.wd = trunc i64 %indvars.iv3351.i.us to i32
  %i.we = mul i32 %i.uv, %i.wd
  %.reass.us.us2680.us.us.i.us = add i32 %i.we, %invariant.op2642.i ; 3 uses
  %i.wf = icmp slt i32 %.reass.us.us2680.us.us.i.us, 0
  br i1 %i.wf, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph.split.us.us.us.us.i.us
  %i.wg = srem i32 %.reass.us.us2680.us.us.i.us, %i.ux
  %i.wh = sdiv i32 %.reass.us.us2680.us.us.i.us, %i.ux ; 2 uses
  %.not932.us.us.us.us.i.us = icmp eq i32 %i.wg, 0
  %.not933.us.us.us.us.i.us = icmp slt i32 %i.wh, %i.hf
  %or.cond303 = select i1 %.not932.us.us.us.us.i.us, i1 %.not933.us.us.us.us.i.us, i1 false
  br i1 %or.cond303, label %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us, label %bb.ag

_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us:        ; preds = %bb.af
  %i.wi = add nuw nsw i64 %indvars.iv3351.i.us, %i.wb
  %i.wj = shl i64 %i.wi, 4
  %i.wk = and i64 %i.wj, 4294967280
  %i.wl = getelementptr inbounds nuw [2 x i8], ptr %.17522699.us.us.i, i64 %i.wk ; 4 uses
  %i.wm = load i32, ptr %i.o, align 4, !tbaa !54, !noalias !625
  %i.wn = load ptr, ptr %1, align 8, !tbaa !20, !noalias !625
  %i.wo = load i64, ptr %i.fk, align 8, !tbaa !21, !noalias !625
  %i.wp = mul i64 %i.wo, %i.vv
  %i.wq = load i64, ptr %i.fl, align 8, !tbaa !55, !noalias !625 ; 2 uses
  %i.wr = mul i64 %i.wp, %i.wq
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wn, i64 %i.wr
  %i.wt = sext i32 %i.wm to i64
  %i.wu = mul nsw i64 %i.wt, %i.wc
  %i.wv = mul i64 %i.wu, %i.wq
  %i.ww = getelementptr inbounds nuw i8, ptr %i.ws, i64 %i.wv
  %i.wx = shl nsw i32 %i.wh, 2
  %i.wy = sext i32 %i.wx to i64
  %i.wz = getelementptr inbounds [2 x i8], ptr %i.ww, i64 %i.wy ; 4 uses
  %5 = load i16, ptr %i.wz, align 2, !tbaa !89
  %6 = zext i16 %5 to i32
  %7 = shl nuw i32 %6, 16
  %8 = insertelement <4 x i32> poison, i32 %7, i64 0
  %i.xa = bitcast <4 x i32> %8 to <4 x float>
  %i.xb = shufflevector <4 x float> %i.xa, <4 x float> poison, <4 x i32> zeroinitializer
  %9 = getelementptr inbounds nuw i8, ptr %i.wz, i64 2
  %10 = load i16, ptr %9, align 2, !tbaa !89
  %11 = zext i16 %10 to i32
  %12 = shl nuw i32 %11, 16
  %13 = insertelement <4 x i32> poison, i32 %12, i64 0
  %i.xc = bitcast <4 x i32> %13 to <4 x float>
  %14 = shufflevector <4 x float> %i.xc, <4 x float> poison, <4 x i32> zeroinitializer
  %15 = getelementptr inbounds nuw i8, ptr %i.wz, i64 4
  %16 = load i16, ptr %15, align 2, !tbaa !89
  %17 = zext i16 %16 to i32
  %18 = shl nuw i32 %17, 16
  %19 = insertelement <4 x i32> poison, i32 %18, i64 0
  %i.xd = bitcast <4 x i32> %19 to <4 x float>
  %20 = shufflevector <4 x float> %i.xd, <4 x float> poison, <4 x i32> zeroinitializer
  %21 = getelementptr inbounds nuw i8, ptr %i.wz, i64 6
  %22 = load i16, ptr %21, align 2, !tbaa !89
  %23 = zext i16 %22 to i32
  %24 = shl nuw i32 %23, 16
  %25 = insertelement <4 x i32> poison, i32 %24, i64 0
  %i.xe = bitcast <4 x i32> %25 to <4 x float>
  %26 = shufflevector <4 x float> %i.xe, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xf = load i64, ptr %i.wl, align 1, !tbaa !82
  %i.xg = insertelement <2 x i64> poison, i64 %i.xf, i64 0
  %i.xh = bitcast <2 x i64> %i.xg to <8 x i16>
  %i.xi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.xh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.xj = bitcast <8 x i16> %i.xi to <4 x float>
  %i.xk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xb, <4 x float> nofpclass(nan inf) %i.xj, <4 x float> nofpclass(nan inf) %.823882636.us.us.us.us.i.us)
  %i.xl = getelementptr inbounds nuw i8, ptr %i.wl, i64 8
  %i.xm = load i64, ptr %i.xl, align 1, !tbaa !82
  %i.xn = insertelement <2 x i64> poison, i64 %i.xm, i64 0
  %i.xo = bitcast <2 x i64> %i.xn to <8 x i16>
  %i.xp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.xo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.xq = bitcast <8 x i16> %i.xp to <4 x float>
  %i.xr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %14, <4 x float> nofpclass(nan inf) %i.xq, <4 x float> nofpclass(nan inf) %.724062635.us.us.us.us.i.us)
  %i.xs = getelementptr inbounds nuw i8, ptr %i.wl, i64 16
  %i.xt = load i64, ptr %i.xs, align 1, !tbaa !82
  %i.xu = insertelement <2 x i64> poison, i64 %i.xt, i64 0
  %i.xv = bitcast <2 x i64> %i.xu to <8 x i16>
  %i.xw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.xv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.xx = bitcast <8 x i16> %i.xw to <4 x float>
  %i.xy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %20, <4 x float> nofpclass(nan inf) %i.xx, <4 x float> nofpclass(nan inf) %.724212634.us.us.us.us.i.us)
  %i.xz = getelementptr inbounds nuw i8, ptr %i.wl, i64 24
  %i.ya = load i64, ptr %i.xz, align 1, !tbaa !82
  %i.yb = insertelement <2 x i64> poison, i64 %i.ya, i64 0
  %i.yc = bitcast <2 x i64> %i.yb to <8 x i16>
  %i.yd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ye = bitcast <8 x i16> %i.yd to <4 x float>
  %i.yf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %26, <4 x float> nofpclass(nan inf) %i.ye, <4 x float> nofpclass(nan inf) %.724312633.us.us.us.us.i.us)
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us, %bb.af, %.lr.ph.split.us.us.us.us.i.us
  %.82432.us.us.us.us.i.us = phi nsz <4 x float> [ %.724312633.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.724312633.us.us.us.us.i.us, %bb.af ], [ %i.yf, %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us ] ; 2 uses
  %.82422.us.us.us.us.i.us = phi nsz <4 x float> [ %.724212634.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.724212634.us.us.us.us.i.us, %bb.af ], [ %i.xy, %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us ] ; 2 uses
  %.82407.us.us.us.us.i.us = phi nsz <4 x float> [ %.724062635.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.724062635.us.us.us.us.i.us, %bb.af ], [ %i.xr, %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us ] ; 2 uses
  %.92389.us.us.us.us.i.us = phi nsz <4 x float> [ %.823882636.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.823882636.us.us.us.us.i.us, %bb.af ], [ %i.xk, %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us ] ; 2 uses
  %indvars.iv.next3352.i.us = add nuw nsw i64 %indvars.iv3351.i.us, 1 ; 2 uses
  %exitcond3355.not.i.us = icmp eq i64 %indvars.iv.next3352.i.us, %i.vp
  br i1 %exitcond3355.not.i.us, label %..loopexit2572_crit_edge.us.us.us.i.us, label %.lr.ph.split.us.us.us.us.i.us, !llvm.loop !540

..loopexit2572_crit_edge.us.us.us.i.us:           ; preds = %bb.ag, %bb.ae, %.preheader2577.us.us.i.split.us
  %.92433.us.us.us.i.us = phi nsz <4 x float> [ %.624302668.us.us.us.i.us, %.preheader2577.us.us.i.split.us ], [ %.624302668.us.us.us.i.us, %bb.ae ], [ %.82432.us.us.us.us.i.us, %bb.ag ] ; 2 uses
  %.92423.us.us.us.i.us = phi nsz <4 x float> [ %.624202669.us.us.us.i.us, %.preheader2577.us.us.i.split.us ], [ %.624202669.us.us.us.i.us, %bb.ae ], [ %.82422.us.us.us.us.i.us, %bb.ag ] ; 2 uses
  %.92408.us.us.us.i.us = phi nsz <4 x float> [ %.624052670.us.us.us.i.us, %.preheader2577.us.us.i.split.us ], [ %.624052670.us.us.us.i.us, %bb.ae ], [ %.82407.us.us.us.us.i.us, %bb.ag ] ; 2 uses
  %.102390.us.us.us.i.us = phi nsz <4 x float> [ %.72671.us.us.us.i.us, %.preheader2577.us.us.i.split.us ], [ %.72671.us.us.us.i.us, %bb.ae ], [ %.92389.us.us.us.us.i.us, %bb.ag ] ; 2 uses
  %indvars.iv.next3357.i.us = add nuw nsw i64 %indvars.iv3356.i.us, 1 ; 2 uses
  %exitcond3360.not.i.us = icmp eq i64 %indvars.iv.next3357.i.us, %wide.trip.count3339.i
  br i1 %exitcond3360.not.i.us, label %._crit_edge.split.us.us2714.us.i, label %.preheader2577.us.us.i.split.us, !llvm.loop !541

.preheader2577.us.us.i.split.us77:                ; preds = %.preheader2577.us.us.i, %..loopexit2572_crit_edge.us.us.us.i.us87
  %indvars.iv3356.i.us78 = phi i64 [ %indvars.iv.next3357.i.us92, %..loopexit2572_crit_edge.us.us.us.i.us87 ], [ 0, %.preheader2577.us.us.i ] ; 3 uses
  %.72671.us.us.us.i.us79 = phi <4 x float> [ %.102390.us.us.us.i.us91, %..loopexit2572_crit_edge.us.us.us.i.us87 ], [ %.623872697.us.us.i, %.preheader2577.us.us.i ] ; 3 uses
  %.624052670.us.us.us.i.us80 = phi <4 x float> [ %.92408.us.us.us.i.us90, %..loopexit2572_crit_edge.us.us.us.i.us87 ], [ %.524042696.us.us.i, %.preheader2577.us.us.i ] ; 3 uses
  %.624202669.us.us.us.i.us81 = phi <4 x float> [ %.92423.us.us.us.i.us89, %..loopexit2572_crit_edge.us.us.us.i.us87 ], [ %.524192695.us.us.i, %.preheader2577.us.us.i ] ; 3 uses
  %.624302668.us.us.us.i.us82 = phi <4 x float> [ %.92433.us.us.us.i.us88, %..loopexit2572_crit_edge.us.us.us.i.us87 ], [ %.524292694.us.us.i, %.preheader2577.us.us.i ] ; 3 uses
  %i.yg = trunc i64 %indvars.iv3356.i.us78 to i32
  %i.yh = mul i32 %i.ur, %i.yg
  %.reass2679.us.us.us.i.us83 = add i32 %i.yh, %invariant.op2678.i ; 3 uses
  %i.yi = icmp slt i32 %.reass2679.us.us.us.i.us83, 0
  br i1 %i.yi, label %..loopexit2572_crit_edge.us.us.us.i.us87, label %bb.ah

bb.ah:                                            ; preds = %.preheader2577.us.us.i.split.us77
  %i.yj = srem i32 %.reass2679.us.us.us.i.us83, %i.ut
  %i.yk = sdiv i32 %.reass2679.us.us.us.i.us83, %i.ut ; 2 uses
  %.not930.us.us.us.i.us84 = icmp eq i32 %i.yj, 0
  %.not931.us.us.us.i.us85 = icmp slt i32 %i.yk, %i.hg
  %or.cond304 = select i1 %.not930.us.us.us.i.us84, i1 %.not931.us.us.us.i.us85, i1 false
  br i1 %or.cond304, label %.preheader2571.us.us.us.i.us86, label %..loopexit2572_crit_edge.us.us.us.i.us87

.preheader2571.us.us.us.i.us86:                   ; preds = %bb.ah
  %i.yl = mul nuw nsw i64 %indvars.iv3356.i.us78, %i.vp
  %i.ym = sext i32 %i.yk to i64
  br label %.lr.ph.split.us2646.us.us.us.i.us

.lr.ph.split.us2646.us.us.us.i.us:                ; preds = %.preheader2571.us.us.us.i.us86, %bb.aj
  %indvars.iv3346.i.us = phi i64 [ %indvars.iv.next3347.i.us, %bb.aj ], [ 0, %.preheader2571.us.us.us.i.us86 ] ; 3 uses
  %.823882636.us2648.us.us.us.i.us = phi <4 x float> [ %.92389.us2658.us.us.us.i.us, %bb.aj ], [ %.72671.us.us.us.i.us79, %.preheader2571.us.us.us.i.us86 ] ; 3 uses
  %.724062635.us2649.us.us.us.i.us = phi <4 x float> [ %.82407.us2657.us.us.us.i.us, %bb.aj ], [ %.624052670.us.us.us.i.us80, %.preheader2571.us.us.us.i.us86 ] ; 3 uses
  %.724212634.us2650.us.us.us.i.us = phi <4 x float> [ %.82422.us2656.us.us.us.i.us, %bb.aj ], [ %.624202669.us.us.us.i.us81, %.preheader2571.us.us.us.i.us86 ] ; 3 uses
  %.724312633.us2651.us.us.us.i.us = phi <4 x float> [ %.82432.us2655.us.us.us.i.us, %bb.aj ], [ %.624302668.us.us.us.i.us82, %.preheader2571.us.us.us.i.us86 ] ; 3 uses
  %i.yn = trunc i64 %indvars.iv3346.i.us to i32
  %i.yo = mul i32 %i.uv, %i.yn
  %.reass.us2652.us.us.us.i.us = add i32 %i.yo, %invariant.op2642.i ; 3 uses
  %i.yp = icmp slt i32 %.reass.us2652.us.us.us.i.us, 0
  br i1 %i.yp, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.split.us2646.us.us.us.i.us
  %i.yq = srem i32 %.reass.us2652.us.us.us.i.us, %i.ux
  %i.yr = sdiv i32 %.reass.us2652.us.us.us.i.us, %i.ux ; 2 uses
  %.not932.us2653.us.us.us.i.us = icmp eq i32 %i.yq, 0
  %.not933.us2654.us.us.us.i.us = icmp slt i32 %i.yr, %i.hf
  %or.cond305 = select i1 %.not932.us2653.us.us.us.i.us, i1 %.not933.us2654.us.us.us.i.us, i1 false
  br i1 %or.cond305, label %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us, label %bb.aj

_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us:        ; preds = %bb.ai
  %i.ys = add nuw nsw i64 %indvars.iv3346.i.us, %i.yl
  %i.yt = shl i64 %i.ys, 4
  %i.yu = and i64 %i.yt, 4294967280
  %i.yv = getelementptr inbounds nuw [2 x i8], ptr %.17522699.us.us.i, i64 %i.yu ; 4 uses
  %i.yw = load i32, ptr %i.o, align 4, !tbaa !54, !noalias !626
  %i.yx = load ptr, ptr %1, align 8, !tbaa !20, !noalias !626 ; 4 uses
  %i.yy = load i64, ptr %i.fk, align 8, !tbaa !21, !noalias !626
  %i.yz = load i64, ptr %i.fl, align 8, !tbaa !55, !noalias !626 ; 2 uses
  %i.za = mul i64 %i.yz, %i.yy                    ; 4 uses
  %i.zb = mul i64 %i.za, %indvars.iv3361.i
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yx, i64 %i.zb
  %i.zd = sext i32 %i.yw to i64
  %i.ze = mul nsw i64 %i.zd, %i.ym
  %i.zf = mul i64 %i.ze, %i.yz                    ; 4 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zc, i64 %i.zf
  %i.zh = sext i32 %i.yr to i64                   ; 4 uses
  %i.zi = getelementptr inbounds [2 x i8], ptr %i.zg, i64 %i.zh
  %i.zj = load i16, ptr %i.zi, align 2, !tbaa !89
  %i.zk = zext i16 %i.zj to i32
  %i.zl = shl nuw i32 %i.zk, 16
  %i.zm = insertelement <4 x i32> poison, i32 %i.zl, i64 0
  %i.zn = bitcast <4 x i32> %i.zm to <4 x float>
  %i.zo = shufflevector <4 x float> %i.zn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zp = mul i64 %i.za, %i.vt
  %i.zq = getelementptr inbounds nuw i8, ptr %i.yx, i64 %i.zp
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 %i.zf
  %i.zs = getelementptr inbounds [2 x i8], ptr %i.zr, i64 %i.zh
  %i.zt = load i16, ptr %i.zs, align 2, !tbaa !89
  %i.zu = zext i16 %i.zt to i32
  %i.zv = shl nuw i32 %i.zu, 16
  %i.zw = insertelement <4 x i32> poison, i32 %i.zv, i64 0
  %i.zx = bitcast <4 x i32> %i.zw to <4 x float>
  %i.zy = shufflevector <4 x float> %i.zx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zz = mul i64 %i.za, %i.vu
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.yx, i64 %i.zz
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 %i.zf
  %i.aac = getelementptr inbounds [2 x i8], ptr %i.aab, i64 %i.zh
  %i.aad = load i16, ptr %i.aac, align 2, !tbaa !89
  %i.aae = zext i16 %i.aad to i32
  %i.aaf = shl nuw i32 %i.aae, 16
  %i.aag = insertelement <4 x i32> poison, i32 %i.aaf, i64 0
  %i.aah = bitcast <4 x i32> %i.aag to <4 x float>
  %i.aai = shufflevector <4 x float> %i.aah, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aaj = mul i64 %i.za, %i.vs
  %i.aak = getelementptr inbounds nuw i8, ptr %i.yx, i64 %i.aaj
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 %i.zf
  %i.aam = getelementptr inbounds [2 x i8], ptr %i.aal, i64 %i.zh
  %i.aan = load i16, ptr %i.aam, align 2, !tbaa !89
  %i.aao = zext i16 %i.aan to i32
  %i.aap = shl nuw i32 %i.aao, 16
  %i.aaq = insertelement <4 x i32> poison, i32 %i.aap, i64 0
  %i.aar = bitcast <4 x i32> %i.aaq to <4 x float>
  %i.aas = shufflevector <4 x float> %i.aar, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aat = load i64, ptr %i.yv, align 1, !tbaa !82
  %i.aau = insertelement <2 x i64> poison, i64 %i.aat, i64 0
  %i.aav = bitcast <2 x i64> %i.aau to <8 x i16>
  %i.aaw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aav, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aax = bitcast <8 x i16> %i.aaw to <4 x float>
  %i.aay = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.zo, <4 x float> nofpclass(nan inf) %i.aax, <4 x float> nofpclass(nan inf) %.823882636.us2648.us.us.us.i.us)
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.yv, i64 8
  %i.aba = load i64, ptr %i.aaz, align 1, !tbaa !82
  %i.abb = insertelement <2 x i64> poison, i64 %i.aba, i64 0
  %i.abc = bitcast <2 x i64> %i.abb to <8 x i16>
  %i.abd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.abc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.abe = bitcast <8 x i16> %i.abd to <4 x float>
  %i.abf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.zy, <4 x float> nofpclass(nan inf) %i.abe, <4 x float> nofpclass(nan inf) %.724062635.us2649.us.us.us.i.us)
  %i.abg = getelementptr inbounds nuw i8, ptr %i.yv, i64 16
  %i.abh = load i64, ptr %i.abg, align 1, !tbaa !82
  %i.abi = insertelement <2 x i64> poison, i64 %i.abh, i64 0
  %i.abj = bitcast <2 x i64> %i.abi to <8 x i16>
  %i.abk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.abj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.abl = bitcast <8 x i16> %i.abk to <4 x float>
  %i.abm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aai, <4 x float> nofpclass(nan inf) %i.abl, <4 x float> nofpclass(nan inf) %.724212634.us2650.us.us.us.i.us)
  %i.abn = getelementptr inbounds nuw i8, ptr %i.yv, i64 24
  %i.abo = load i64, ptr %i.abn, align 1, !tbaa !82
  %i.abp = insertelement <2 x i64> poison, i64 %i.abo, i64 0
  %i.abq = bitcast <2 x i64> %i.abp to <8 x i16>
  %i.abr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.abq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.abs = bitcast <8 x i16> %i.abr to <4 x float>
  %i.abt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aas, <4 x float> nofpclass(nan inf) %i.abs, <4 x float> nofpclass(nan inf) %.724312633.us2651.us.us.us.i.us)
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us, %bb.ai, %.lr.ph.split.us2646.us.us.us.i.us
  %.82432.us2655.us.us.us.i.us = phi nsz <4 x float> [ %.724312633.us2651.us.us.us.i.us, %.lr.ph.split.us2646.us.us.us.i.us ], [ %i.abt, %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us ], [ %.724312633.us2651.us.us.us.i.us, %bb.ai ] ; 2 uses
  %.82422.us2656.us.us.us.i.us = phi nsz <4 x float> [ %.724212634.us2650.us.us.us.i.us, %.lr.ph.split.us2646.us.us.us.i.us ], [ %i.abm, %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us ], [ %.724212634.us2650.us.us.us.i.us, %bb.ai ] ; 2 uses
  %.82407.us2657.us.us.us.i.us = phi nsz <4 x float> [ %.724062635.us2649.us.us.us.i.us, %.lr.ph.split.us2646.us.us.us.i.us ], [ %i.abf, %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us ], [ %.724062635.us2649.us.us.us.i.us, %bb.ai ] ; 2 uses
  %.92389.us2658.us.us.us.i.us = phi nsz <4 x float> [ %.823882636.us2648.us.us.us.i.us, %.lr.ph.split.us2646.us.us.us.i.us ], [ %i.aay, %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us ], [ %.823882636.us2648.us.us.us.i.us, %bb.ai ] ; 2 uses
  %indvars.iv.next3347.i.us = add nuw nsw i64 %indvars.iv3346.i.us, 1 ; 2 uses
  %exitcond3350.not.i.us = icmp eq i64 %indvars.iv.next3347.i.us, %i.vp
  br i1 %exitcond3350.not.i.us, label %..loopexit2572_crit_edge.us.us.us.i.us87, label %.lr.ph.split.us2646.us.us.us.i.us, !llvm.loop !540

..loopexit2572_crit_edge.us.us.us.i.us87:         ; preds = %bb.aj, %bb.ah, %.preheader2577.us.us.i.split.us77
  %.92433.us.us.us.i.us88 = phi nsz <4 x float> [ %.624302668.us.us.us.i.us82, %.preheader2577.us.us.i.split.us77 ], [ %.624302668.us.us.us.i.us82, %bb.ah ], [ %.82432.us2655.us.us.us.i.us, %bb.aj ] ; 2 uses
  %.92423.us.us.us.i.us89 = phi nsz <4 x float> [ %.624202669.us.us.us.i.us81, %.preheader2577.us.us.i.split.us77 ], [ %.624202669.us.us.us.i.us81, %bb.ah ], [ %.82422.us2656.us.us.us.i.us, %bb.aj ] ; 2 uses
  %.92408.us.us.us.i.us90 = phi nsz <4 x float> [ %.624052670.us.us.us.i.us80, %.preheader2577.us.us.i.split.us77 ], [ %.624052670.us.us.us.i.us80, %bb.ah ], [ %.82407.us2657.us.us.us.i.us, %bb.aj ] ; 2 uses
  %.102390.us.us.us.i.us91 = phi nsz <4 x float> [ %.72671.us.us.us.i.us79, %.preheader2577.us.us.i.split.us77 ], [ %.72671.us.us.us.i.us79, %bb.ah ], [ %.92389.us2658.us.us.us.i.us, %bb.aj ] ; 2 uses
  %indvars.iv.next3357.i.us92 = add nuw nsw i64 %indvars.iv3356.i.us78, 1 ; 2 uses
  %exitcond3360.not.i.us93 = icmp eq i64 %indvars.iv.next3357.i.us92, %wide.trip.count3339.i
  br i1 %exitcond3360.not.i.us93, label %._crit_edge.split.us.us2714.us.i, label %.preheader2577.us.us.i.split.us77, !llvm.loop !541

._crit_edge.split.us.us2714.us.i:                 ; preds = %..loopexit2572_crit_edge.us.us.us.i.us87, %..loopexit2572_crit_edge.us.us.us.i.us, %.preheader2577.us.us.i
  %.us-phi = phi <4 x float> [ %.92433.us.us.us.i.us, %..loopexit2572_crit_edge.us.us.us.i.us ], [ %.524292694.us.us.i, %.preheader2577.us.us.i ], [ %.92433.us.us.us.i.us88, %..loopexit2572_crit_edge.us.us.us.i.us87 ] ; 2 uses
  %.us-phi74 = phi <4 x float> [ %.92423.us.us.us.i.us, %..loopexit2572_crit_edge.us.us.us.i.us ], [ %.524192695.us.us.i, %.preheader2577.us.us.i ], [ %.92423.us.us.us.i.us89, %..loopexit2572_crit_edge.us.us.us.i.us87 ] ; 2 uses
  %.us-phi75 = phi <4 x float> [ %.92408.us.us.us.i.us, %..loopexit2572_crit_edge.us.us.us.i.us ], [ %.524042696.us.us.i, %.preheader2577.us.us.i ], [ %.92408.us.us.us.i.us90, %..loopexit2572_crit_edge.us.us.us.i.us87 ] ; 2 uses
  %.us-phi76 = phi <4 x float> [ %.102390.us.us.us.i.us, %..loopexit2572_crit_edge.us.us.us.i.us ], [ %.623872697.us.us.i, %.preheader2577.us.us.i ], [ %.102390.us.us.us.i.us91, %..loopexit2572_crit_edge.us.us.us.i.us87 ] ; 2 uses
  %i.abu = getelementptr inbounds [2 x i8], ptr %.17522699.us.us.i, i64 %i.it ; 2 uses
  %indvars.iv.next3362.i = add nuw nsw i64 %indvars.iv3361.i, 4 ; 3 uses
  %i.abv = or disjoint i64 %indvars.iv.next3362.i, 3 ; 2 uses
  %i.abw = trunc nuw i64 %i.abv to i32
  %i.abx = icmp sgt i32 %i.he, %i.abw
  br i1 %i.abx, label %.preheader2577.us.us.i, label %.preheader2580.loopexit.i, !llvm.loop !544

.preheader2580.loopexit.i:                        ; preds = %._crit_edge.split.us.us2714.us.i
  %i.aby = trunc nuw i64 %indvars.iv.next3362.i to i32
  br label %.preheader2580.i

.preheader2580.i:                                 ; preds = %.preheader2580.loopexit.i, %.preheader2577.us.preheader.i, %.preheader2577.preheader.i, %.preheader2581.i
  %.52429.lcssa.i = phi <4 x float> [ %.02424.lcssa.i, %.preheader2581.i ], [ %.us-phi, %.preheader2580.loopexit.i ], [ %.02424.lcssa.i, %.preheader2577.us.preheader.i ], [ %.02424.lcssa.i, %.preheader2577.preheader.i ]
  %.52419.lcssa.i = phi <4 x float> [ %.02414.lcssa.i, %.preheader2581.i ], [ %.us-phi74, %.preheader2580.loopexit.i ], [ %.02414.lcssa.i, %.preheader2577.us.preheader.i ], [ %.02414.lcssa.i, %.preheader2577.preheader.i ]
  %.52404.lcssa.i = phi <4 x float> [ %.02399.lcssa.i, %.preheader2581.i ], [ %.us-phi75, %.preheader2580.loopexit.i ], [ %.02399.lcssa.i, %.preheader2577.us.preheader.i ], [ %.02399.lcssa.i, %.preheader2577.preheader.i ] ; 4 uses
  %.62387.lcssa.i = phi <4 x float> [ %.12383.lcssa.i, %.preheader2581.i ], [ %.us-phi76, %.preheader2580.loopexit.i ], [ %.12383.lcssa.i, %.preheader2577.us.preheader.i ], [ %.12383.lcssa.i, %.preheader2577.preheader.i ] ; 4 uses
  %.1757.lcssa.i = phi i32 [ %.0756.lcssa.i, %.preheader2581.i ], [ %i.aby, %.preheader2580.loopexit.i ], [ %i.vo, %.preheader2577.us.preheader.i ], [ %i.vf, %.preheader2577.preheader.i ] ; 7 uses
  %.1752.lcssa.i = phi ptr [ %.0751.lcssa.i, %.preheader2581.i ], [ %i.abu, %.preheader2580.loopexit.i ], [ %scevgep3345.i, %.preheader2577.us.preheader.i ], [ %scevgep3344.i, %.preheader2577.preheader.i ] ; 4 uses
  %i.abz = or disjoint i32 %.1757.lcssa.i, 1      ; 2 uses
  %i.aca = icmp slt i32 %i.abz, %i.he
  br i1 %i.aca, label %.preheader2576.lr.ph.i, label %.preheader2579.i

.preheader2576.lr.ph.i:                           ; preds = %.preheader2580.i
  %i.acb = load i32, ptr %i.d, align 4
  %i.acc = load i32, ptr %i.j, align 4
  %invariant.op2739.i = sub i32 %.neg2536.i, %i.acc
  %i.acd = load i32, ptr %i.f, align 4            ; 2 uses
  %i.ace = load i32, ptr %i.a, align 4
  %.fr3236.i = freeze i32 %i.ace                  ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %.03251408.us = phi i32 [ 0, %.preheader1326.us ], [ %i.ul, %.loopexit1321.us ] ; 3 uses
  %.91407.us = phi <8 x float> [ %.81418.us, %.preheader1326.us ], [ %.13.us, %.loopexit1321.us ] ; 6 uses
  %.812631406.us = phi <8 x float> [ %.712621417.us, %.preheader1326.us ], [ %.121267.us, %.loopexit1321.us ] ; 6 uses
  %.812811405.us = phi <8 x float> [ %.712801416.us, %.preheader1326.us ], [ %.121285.us, %.loopexit1321.us ] ; 6 uses
  %.812941404.us = phi <8 x float> [ %.712931415.us, %.preheader1326.us ], [ %.121298.us, %.loopexit1321.us ] ; 6 uses
  %i.on = mul nsw i32 %i.of, %.03251408.us
  %.reass1414.us = add i32 %i.on, %invariant.op1413.us ; 3 uses
  %i.oo = icmp slt i32 %.reass1414.us, 0
  br i1 %i.oo, label %.loopexit1321.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.op = load i32, ptr %11, align 4, !tbaa !61   ; 2 uses
  %i.oq = srem i32 %.reass1414.us, %i.op
  %i.or = sdiv i32 %.reass1414.us, %i.op          ; 2 uses
  %.not378.us = icmp eq i32 %i.oq, 0
  %.not379.us = icmp slt i32 %i.or, %i.ae
  %or.cond1715 = select i1 %.not378.us, i1 %.not379.us, i1 false
  br i1 %or.cond1715, label %.preheader1320.us, label %.loopexit1321.us

.preheader1320.us:                                ; preds = %bb.m
  %i.os = load i32, ptr %12, align 4, !tbaa !61   ; 4 uses
  %i.ot = icmp sgt i32 %i.os, 0
  br i1 %i.ot, label %.lr.ph.us1427, label %.loopexit1321.us

.lr.ph.us1427:                                    ; preds = %.preheader1320.us
  %i.ou = load i32, ptr %13, align 4, !tbaa !61   ; 2 uses
  %i.ov = load i32, ptr %14, align 4, !tbaa !61
  %invariant.op.us1428 = sub i32 %.neg1313, %i.ov ; 2 uses
  %i.ow = mul nuw nsw i32 %i.os, %.03251408.us    ; 2 uses
  %i.ox = sext i32 %i.or to i64                   ; 2 uses
  switch i32 %.fr, label %.loopexit1321.us [
    i32 4, label %.lr.ph.split.us.us.preheader
    i32 1, label %.lr.ph.split.us1383.us.preheader
  ]

.lr.ph.split.us1383.us.preheader:                 ; preds = %.lr.ph.us1427
  %wide.trip.count1527 = zext nneg i32 %i.os to i64
  br label %.lr.ph.split.us1383.us

.lr.ph.split.us.us.preheader:                     ; preds = %.lr.ph.us1427
  %wide.trip.count1532 = zext nneg i32 %i.os to i64
  br label %.lr.ph.split.us.us

.lr.ph.split.us1383.us:                           ; preds = %.lr.ph.split.us1383.us.preheader, %bb.o
  %indvars.iv1524 = phi i64 [ 0, %.lr.ph.split.us1383.us.preheader ], [ %indvars.iv.next1525, %bb.o ] ; 3 uses
  %.101372.us1385.us = phi <8 x float> [ %.91407.us, %.lr.ph.split.us1383.us.preheader ], [ %.12.us1395.us, %bb.o ] ; 3 uses
  %.912641371.us1386.us = phi <8 x float> [ %.812631406.us, %.lr.ph.split.us1383.us.preheader ], [ %.111266.us1394.us, %bb.o ] ; 3 uses
  %.912821370.us1387.us = phi <8 x float> [ %.812811405.us, %.lr.ph.split.us1383.us.preheader ], [ %.111284.us1393.us, %bb.o ] ; 3 uses
  %.912951369.us1388.us = phi <8 x float> [ %.812941404.us, %.lr.ph.split.us1383.us.preheader ], [ %.111297.us1392.us, %bb.o ] ; 3 uses
  %i.oy = trunc i64 %indvars.iv1524 to i32
  %i.oz = mul i32 %i.ou, %i.oy
  %.reass.us1389.us = add i32 %i.oz, %invariant.op.us1428 ; 3 uses
  %i.pa = icmp slt i32 %.reass.us1389.us, 0
  br i1 %i.pa, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.us1383.us
  %i.pb = load i32, ptr %15, align 4, !tbaa !61   ; 2 uses
  %i.pc = srem i32 %.reass.us1389.us, %i.pb
  %i.pd = sdiv i32 %.reass.us1389.us, %i.pb       ; 2 uses
  %.not380.us1390.us = icmp eq i32 %i.pc, 0
  %.not381.us1391.us = icmp slt i32 %i.pd, %i.ad
  %or.cond1716 = select i1 %.not380.us1390.us, i1 %.not381.us1391.us, i1 false
  br i1 %or.cond1716, label %_ZN4ncnn3MatD2Ev.exit391.us.us, label %bb.o

_ZN4ncnn3MatD2Ev.exit391.us.us:                   ; preds = %bb.n
  %i.pe = trunc i64 %indvars.iv1524 to i32
  %i.pf = add i32 %i.ow, %i.pe
  %i.pg = shl nsw i32 %i.pf, 5
  %i.ph = zext nneg i32 %i.pg to i64
  %i.pi = getelementptr inbounds nuw [2 x i8], ptr %.13301419.us, i64 %i.ph ; 4 uses
  %i.pj = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !759
  %i.pk = load ptr, ptr %4, align 8, !tbaa !20, !noalias !759 ; 4 uses
  %i.pl = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !759 ; 4 uses
  %i.pm = mul i64 %i.pl, %indvars.iv1535
  %i.pn = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !759 ; 5 uses
  %i.po = mul i64 %i.pm, %i.pn
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pk, i64 %i.po
  %i.pq = sext i32 %i.pj to i64
  %i.pr = mul nsw i64 %i.pq, %i.ox
  %i.ps = mul i64 %i.pr, %i.pn                    ; 4 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pp, i64 %i.ps
  %i.pu = sext i32 %i.pd to i64                   ; 4 uses
  %i.pv = getelementptr inbounds [2 x i8], ptr %i.pt, i64 %i.pu
  %i.pw = mul i64 %i.pl, %i.ok
  %i.px = mul i64 %i.pw, %i.pn
  %i.py = getelementptr inbounds nuw i8, ptr %i.pk, i64 %i.px
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 %i.ps
  %i.qa = getelementptr inbounds [2 x i8], ptr %i.pz, i64 %i.pu
  %i.qb = mul i64 %i.pl, %i.ol
  %i.qc = mul i64 %i.qb, %i.pn
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pk, i64 %i.qc
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 %i.ps
  %i.qf = getelementptr inbounds [2 x i8], ptr %i.qe, i64 %i.pu
  %i.qg = mul i64 %i.pl, %i.oj
  %i.qh = mul i64 %i.qg, %i.pn
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pk, i64 %i.qh
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 %i.ps
  %i.qk = getelementptr inbounds [2 x i8], ptr %i.qj, i64 %i.pu
  %i.ql = load i16, ptr %i.pv, align 2, !tbaa !89
  %i.qm = zext i16 %i.ql to i32
  %i.qn = shl nuw i32 %i.qm, 16
  %i.qo = insertelement <8 x i32> poison, i32 %i.qn, i64 0
  %i.qp = bitcast <8 x i32> %i.qo to <8 x float>
  %i.qq = shufflevector <8 x float> %i.qp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qr = load i16, ptr %i.qa, align 2, !tbaa !89
  %i.qs = zext i16 %i.qr to i32
  %i.qt = shl nuw i32 %i.qs, 16
  %i.qu = insertelement <8 x i32> poison, i32 %i.qt, i64 0
  %i.qv = bitcast <8 x i32> %i.qu to <8 x float>
  %i.qw = shufflevector <8 x float> %i.qv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qx = load i16, ptr %i.qf, align 2, !tbaa !89
  %i.qy = zext i16 %i.qx to i32
  %i.qz = shl nuw i32 %i.qy, 16
  %i.ra = insertelement <8 x i32> poison, i32 %i.qz, i64 0
  %i.rb = bitcast <8 x i32> %i.ra to <8 x float>
  %i.rc = shufflevector <8 x float> %i.rb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.rd = load i16, ptr %i.qk, align 2, !tbaa !89
  %i.re = zext i16 %i.rd to i32
  %i.rf = shl nuw i32 %i.re, 16
  %i.rg = insertelement <8 x i32> poison, i32 %i.rf, i64 0
  %i.rh = bitcast <8 x i32> %i.rg to <8 x float>
  %i.ri = shufflevector <8 x float> %i.rh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.rj = load <8 x i16>, ptr %i.pi, align 16, !tbaa !82 ; 2 uses
  %i.rk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rl = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.rj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.rm = shufflevector <8 x i16> %i.rk, <8 x i16> %i.rl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rn = bitcast <16 x i16> %i.rm to <8 x float>
  %i.ro = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qq, <8 x float> nofpclass(nan inf) %i.rn, <8 x float> nofpclass(nan inf) %.101372.us1385.us)
  %i.rp = getelementptr inbounds nuw i8, ptr %i.pi, i64 16
  %i.rq = load <8 x i16>, ptr %i.rp, align 16, !tbaa !82 ; 2 uses
  %i.rr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rs = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.rq, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.rt = shufflevector <8 x i16> %i.rr, <8 x i16> %i.rs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ru = bitcast <16 x i16> %i.rt to <8 x float>
  %i.rv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qw, <8 x float> nofpclass(nan inf) %i.ru, <8 x float> nofpclass(nan inf) %.912641371.us1386.us)
  %i.rw = getelementptr inbounds nuw i8, ptr %i.pi, i64 32
  %i.rx = load <8 x i16>, ptr %i.rw, align 16, !tbaa !82 ; 2 uses
  %i.ry = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rz = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.rx, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.sa = shufflevector <8 x i16> %i.ry, <8 x i16> %i.rz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.sb = bitcast <16 x i16> %i.sa to <8 x float>
  %i.sc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rc, <8 x float> nofpclass(nan inf) %i.sb, <8 x float> nofpclass(nan inf) %.912821370.us1387.us)
  %i.sd = getelementptr inbounds nuw i8, ptr %i.pi, i64 48
  %i.se = load <8 x i16>, ptr %i.sd, align 16, !tbaa !82 ; 2 uses
  %i.sf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.se, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sg = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.se, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.sh = shufflevector <8 x i16> %i.sf, <8 x i16> %i.sg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.si = bitcast <16 x i16> %i.sh to <8 x float>
  %i.sj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ri, <8 x float> nofpclass(nan inf) %i.si, <8 x float> nofpclass(nan inf) %.912951369.us1388.us)
  br label %bb.o

bb.o:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit391.us.us, %bb.n, %.lr.ph.split.us1383.us
  %.111297.us1392.us = phi nsz <8 x float> [ %.912951369.us1388.us, %.lr.ph.split.us1383.us ], [ %.912951369.us1388.us, %bb.n ], [ %i.sj, %_ZN4ncnn3MatD2Ev.exit391.us.us ] ; 2 uses
  %.111284.us1393.us = phi nsz <8 x float> [ %.912821370.us1387.us, %.lr.ph.split.us1383.us ], [ %.912821370.us1387.us, %bb.n ], [ %i.sc, %_ZN4ncnn3MatD2Ev.exit391.us.us ] ; 2 uses
  %.111266.us1394.us = phi nsz <8 x float> [ %.912641371.us1386.us, %.lr.ph.split.us1383.us ], [ %.912641371.us1386.us, %bb.n ], [ %i.rv, %_ZN4ncnn3MatD2Ev.exit391.us.us ] ; 2 uses
  %.12.us1395.us = phi nsz <8 x float> [ %.101372.us1385.us, %.lr.ph.split.us1383.us ], [ %.101372.us1385.us, %bb.n ], [ %i.ro, %_ZN4ncnn3MatD2Ev.exit391.us.us ] ; 2 uses
  %indvars.iv.next1525 = add nuw nsw i64 %indvars.iv1524, 1 ; 2 uses
  %exitcond1528.not = icmp eq i64 %indvars.iv.next1525, %wide.trip.count1527
  br i1 %exitcond1528.not, label %.loopexit1321.us, label %.lr.ph.split.us1383.us, !llvm.loop !738

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us.preheader, %bb.r
  %indvars.iv1529 = phi i64 [ 0, %.lr.ph.split.us.us.preheader ], [ %indvars.iv.next1530, %bb.r ] ; 3 uses
  %.101372.us.us = phi <8 x float> [ %.91407.us, %.lr.ph.split.us.us.preheader ], [ %.12.us.us, %bb.r ] ; 3 uses
  %.912641371.us.us = phi <8 x float> [ %.812631406.us, %.lr.ph.split.us.us.preheader ], [ %.111266.us.us, %bb.r ] ; 3 uses
  %.912821370.us.us = phi <8 x float> [ %.812811405.us, %.lr.ph.split.us.us.preheader ], [ %.111284.us.us, %bb.r ] ; 3 uses
  %.912951369.us.us = phi <8 x float> [ %.812941404.us, %.lr.ph.split.us.us.preheader ], [ %.111297.us.us, %bb.r ] ; 3 uses
  %i.sk = trunc i64 %indvars.iv1529 to i32
  %i.sl = mul i32 %i.ou, %i.sk
  %.reass.us1377.us = add i32 %i.sl, %invariant.op.us1428 ; 3 uses
  %i.sm = icmp slt i32 %.reass.us1377.us, 0
  br i1 %i.sm, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split.us.us
  %i.sn = load i32, ptr %15, align 4, !tbaa !61   ; 2 uses
  %i.so = srem i32 %.reass.us1377.us, %i.sn
  %i.sp = sdiv i32 %.reass.us1377.us, %i.sn       ; 2 uses
  %.not380.us.us = icmp eq i32 %i.so, 0
  %.not381.us.us = icmp slt i32 %i.sp, %i.ad
  %or.cond1717 = select i1 %.not380.us.us, i1 %.not381.us.us, i1 false
  br i1 %or.cond1717, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.sq = trunc i64 %indvars.iv1529 to i32
  %i.sr = add i32 %i.ow, %i.sq
  %i.ss = shl nsw i32 %i.sr, 5
  %i.st = zext nneg i32 %i.ss to i64
  %i.su = getelementptr inbounds nuw [2 x i8], ptr %.13301419.us, i64 %i.st ; 4 uses
  %i.sv = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !760
  %i.sw = load ptr, ptr %4, align 8, !tbaa !20, !noalias !760
  %i.sx = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !760
  %i.sy = mul i64 %i.sx, %i.om
  %i.sz = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !760 ; 2 uses
  %i.ta = mul i64 %i.sy, %i.sz
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sw, i64 %i.ta
  %i.tc = sext i32 %i.sv to i64
  %i.td = mul nsw i64 %i.tc, %i.ox
  %i.te = mul i64 %i.td, %i.sz
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tb, i64 %i.te
  %i.tg = shl nsw i32 %i.sp, 2
  %i.th = sext i32 %i.tg to i64
  %i.ti = getelementptr inbounds [2 x i8], ptr %i.tf, i64 %i.th ; 3 uses
  %20 = load i16, ptr %i.ti, align 2, !tbaa !89
  %21 = zext i16 %20 to i32
  %22 = shl nuw i32 %21, 16
  %23 = insertelement <8 x i32> poison, i32 %22, i64 0
  %24 = bitcast <8 x i32> %23 to <8 x float>
  %25 = shufflevector <8 x float> %24, <8 x float> poison, <8 x i32> zeroinitializer
  %26 = getelementptr inbounds nuw i8, ptr %i.ti, i64 2
  %27 = load i16, ptr %26, align 2, !tbaa !89
  %28 = zext i16 %27 to i32
  %29 = shl nuw i32 %28, 16
  %30 = insertelement <8 x i32> poison, i32 %29, i64 0
  %31 = bitcast <8 x i32> %30 to <8 x float>
  %i.tj = shufflevector <8 x float> %31, <8 x float> poison, <8 x i32> zeroinitializer
  %32 = getelementptr inbounds nuw i8, ptr %i.ti, i64 4
  %33 = load <2 x i16>, ptr %32, align 2, !tbaa !89
  %34 = zext <2 x i16> %33 to <2 x i32>
  %35 = shl nuw <2 x i32> %34, splat (i32 16)     ; 2 uses
  %36 = bitcast <2 x i32> %35 to <2 x float>
  %37 = shufflevector <2 x float> %36, <2 x float> poison, <8 x i32> zeroinitializer
  %38 = bitcast <2 x i32> %35 to <2 x float>
  %39 = shufflevector <2 x float> %38, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.tk = load <8 x i16>, ptr %i.su, align 16, !tbaa !82 ; 2 uses
  %i.tl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.tk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tm = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.tk, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.tn = shufflevector <8 x i16> %i.tl, <8 x i16> %i.tm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.to = bitcast <16 x i16> %i.tn to <8 x float>
  %i.tp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %25, <8 x float> nofpclass(nan inf) %i.to, <8 x float> nofpclass(nan inf) %.101372.us.us)
  %i.tq = getelementptr inbounds nuw i8, ptr %i.su, i64 16
  %i.tr = load <8 x i16>, ptr %i.tq, align 16, !tbaa !82 ; 2 uses
  %i.ts = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.tr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tt = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.tr, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.tu = shufflevector <8 x i16> %i.ts, <8 x i16> %i.tt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.tv = bitcast <16 x i16> %i.tu to <8 x float>
  %i.tw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.tj, <8 x float> nofpclass(nan inf) %i.tv, <8 x float> nofpclass(nan inf) %.912641371.us.us)
  %i.tx = getelementptr inbounds nuw i8, ptr %i.su, i64 32
  %i.ty = load <8 x i16>, ptr %i.tx, align 16, !tbaa !82 ; 2 uses
  %i.tz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ty, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ua = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ty, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ub = shufflevector <8 x i16> %i.tz, <8 x i16> %i.ua, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.uc = bitcast <16 x i16> %i.ub to <8 x float>
  %i.ud = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %37, <8 x float> nofpclass(nan inf) %i.uc, <8 x float> nofpclass(nan inf) %.912821370.us.us)
  %i.ue = getelementptr inbounds nuw i8, ptr %i.su, i64 48
  %i.uf = load <8 x i16>, ptr %i.ue, align 16, !tbaa !82 ; 2 uses
  %i.ug = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.uf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.uh = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.uf, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ui = shufflevector <8 x i16> %i.ug, <8 x i16> %i.uh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.uj = bitcast <16 x i16> %i.ui to <8 x float>
  %i.uk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %39, <8 x float> nofpclass(nan inf) %i.uj, <8 x float> nofpclass(nan inf) %.912951369.us.us)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %.lr.ph.split.us.us
  %.111297.us.us = phi nsz <8 x float> [ %.912951369.us.us, %.lr.ph.split.us.us ], [ %i.uk, %bb.q ], [ %.912951369.us.us, %bb.p ] ; 2 uses
  %.111284.us.us = phi nsz <8 x float> [ %.912821370.us.us, %.lr.ph.split.us.us ], [ %i.ud, %bb.q ], [ %.912821370.us.us, %bb.p ] ; 2 uses
  %.111266.us.us = phi nsz <8 x float> [ %.912641371.us.us, %.lr.ph.split.us.us ], [ %i.tw, %bb.q ], [ %.912641371.us.us, %bb.p ] ; 2 uses
  %.12.us.us = phi nsz <8 x float> [ %.101372.us.us, %.lr.ph.split.us.us ], [ %i.tp, %bb.q ], [ %.101372.us.us, %bb.p ] ; 2 uses
  %indvars.iv.next1530 = add nuw nsw i64 %indvars.iv1529, 1 ; 2 uses
  %exitcond1533.not = icmp eq i64 %indvars.iv.next1530, %wide.trip.count1532
  br i1 %exitcond1533.not, label %.loopexit1321.us, label %.lr.ph.split.us.us, !llvm.loop !738

.loopexit1321.us:                                 ; preds = %bb.o, %bb.r, %.lr.ph.us1427, %.preheader1320.us, %bb.m, %bb.l
  %.121298.us = phi nsz <8 x float> [ %.812941404.us, %bb.l ], [ %.812941404.us, %bb.m ], [ %.111297.us.us, %bb.r ], [ %.812941404.us, %.preheader1320.us ], [ %.812941404.us, %.lr.ph.us1427 ], [ %.111297.us1392.us, %bb.o ] ; 3 uses
  %.121285.us = phi nsz <8 x float> [ %.812811405.us, %bb.l ], [ %.812811405.us, %bb.m ], [ %.111284.us.us, %bb.r ], [ %.812811405.us, %.preheader1320.us ], [ %.812811405.us, %.lr.ph.us1427 ], [ %.111284.us1393.us, %bb.o ] ; 3 uses
  %.121267.us = phi nsz <8 x float> [ %.812631406.us, %bb.l ], [ %.812631406.us, %bb.m ], [ %.111266.us.us, %bb.r ], [ %.812631406.us, %.preheader1320.us ], [ %.812631406.us, %.lr.ph.us1427 ], [ %.111266.us1394.us, %bb.o ] ; 3 uses
  %.13.us = phi nsz <8 x float> [ %.91407.us, %bb.l ], [ %.91407.us, %bb.m ], [ %.12.us.us, %bb.r ], [ %.91407.us, %.preheader1320.us ], [ %.91407.us, %.lr.ph.us1427 ], [ %.12.us1395.us, %bb.o ] ; 3 uses
  %i.ul = add nuw nsw i32 %.03251408.us, 1        ; 2 uses
  %exitcond1534.not = icmp eq i32 %i.ul, %i.ns
  br i1 %exitcond1534.not, label %._crit_edge.us1436, label %bb.l, !llvm.loop !741

._crit_edge.us1436:                               ; preds = %.loopexit1321.us
  %i.um = getelementptr inbounds [2 x i8], ptr %.13301419.us, i64 %i.nw ; 2 uses
  %indvars.iv.next1536 = add nuw nsw i64 %indvars.iv1535, 4 ; 3 uses
  %i.un = or disjoint i64 %indvars.iv.next1536, 3 ; 2 uses
  %i.uo = trunc nuw i64 %i.un to i32
  %i.up = icmp sgt i32 %i.ac, %i.uo
  br i1 %i.up, label %.preheader1326.us, label %.preheader1329.loopexit, !llvm.loop !742

.preheader1329.loopexit:                          ; preds = %._crit_edge.us1436
  %i.uq = trunc nuw i64 %indvars.iv.next1536 to i32
  br label %.preheader1329

.preheader1329:                                   ; preds = %.preheader1326.preheader, %.preheader1329.loopexit, %.preheader1330
  %.71293.lcssa = phi <8 x float> [ %.01286.lcssa, %.preheader1330 ], [ %.121298.us, %.preheader1329.loopexit ], [ %.01286.lcssa, %.preheader1326.preheader ]
  %.71280.lcssa = phi <8 x float> [ %.01273.lcssa, %.preheader1330 ], [ %.121285.us, %.preheader1329.loopexit ], [ %.01273.lcssa, %.preheader1326.preheader ]
  %.71262.lcssa = phi <8 x float> [ %.01255.lcssa, %.preheader1330 ], [ %.121267.us, %.preheader1329.loopexit ], [ %.01255.lcssa, %.preheader1326.preheader ] ; 3 uses
  %.8.lcssa = phi <8 x float> [ %.11251.lcssa, %.preheader1330 ], [ %.13.us, %.preheader1329.loopexit ], [ %.11251.lcssa, %.preheader1326.preheader ] ; 3 uses
  %.1330.lcssa = phi ptr [ %.0329.lcssa, %.preheader1330 ], [ %i.um, %.preheader1329.loopexit ], [ %scevgep1523, %.preheader1326.preheader ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0328.lcssa, %.preheader1330 ], [ %i.uq, %.preheader1329.loopexit ], [ %i.oe, %.preheader1326.preheader ] ; 5 uses
  %i.ur = or disjoint i32 %.1.lcssa, 1            ; 2 uses
  %i.us = icmp slt i32 %i.ur, %i.ac
  br i1 %i.us, label %.preheader1325.lr.ph, label %.preheader1328

.preheader1325.lr.ph:                             ; preds = %.preheader1329
  %i.ut = load i32, ptr %8, align 4, !tbaa !61    ; 2 uses
  %i.uu = icmp sgt i32 %i.ut, 0
  %.neg1309 = add nuw nsw i32 %.03331493, 1
  %i.uv = load i32, ptr %16, align 4, !tbaa !61
  %i.uw = shl i32 %i.uv, 4
  %i.ux = sext i32 %i.uw to i64                   ; 2 uses
  br i1 %i.uu, label %.preheader1325.lr.ph.split.us, label %.preheader1325.preheader

.preheader1325.preheader:                         ; preds = %.preheader1325.lr.ph
  %i.uy = sub i32 %i.bj, %.1.lcssa                ; 2 uses
  %i.uz = and i32 %i.uy, -2
  %i.va = zext i32 %i.uz to i64
  %i.vb = add nuw nsw i64 %i.va, 2
  %i.vc = mul nsw i64 %i.vb, %i.ux
  %scevgep1538 = getelementptr i8, ptr %.1330.lcssa, i64 %i.vc
  %i.vd = add i32 %.1.lcssa, 2
  %i.ve = and i32 %i.uy, -2
  %i.vf = add i32 %i.vd, %i.ve
  br label %.preheader1328

.preheader1325.lr.ph.split.us:                    ; preds = %.preheader1325.lr.ph
  %i.vg = load i32, ptr %9, align 4, !tbaa !61
  %i.vh = load i32, ptr %10, align 4, !tbaa !61
  %invariant.op1454.us = sub i32 %.neg1315, %i.vh
  %i.vi = zext i32 %.1.lcssa to i64
  %i.vj = zext nneg i32 %i.ur to i64
  br label %.preheader1325.us

.preheader1325.us:                                ; preds = %._crit_edge.us1468, %.preheader1325.lr.ph.split.us
  %indvars.iv1545 = phi i64 [ %indvars.iv.next1546, %._crit_edge.us1468 ], [ %i.vi, %.preheader1325.lr.ph.split.us ] ; 2 uses
  %i.vk = phi i64 [ %i.ya, %._crit_edge.us1468 ], [ %i.vj, %.preheader1325.lr.ph.split.us ]
  %.23311458.us = phi ptr [ %i.xz, %._crit_edge.us1468 ], [ %.1330.lcssa, %.preheader1325.lr.ph.split.us ] ; 2 uses
  %.141457.us = phi <8 x float> [ %.18.us, %._crit_edge.us1468 ], [ %.8.lcssa, %.preheader1325.lr.ph.split.us ]
  %.1312681456.us = phi <8 x float> [ %.171272.us, %._crit_edge.us1468 ], [ %.71262.lcssa, %.preheader1325.lr.ph.split.us ]
  br label %bb.s

bb.s:                                             ; preds = %.preheader1325.us, %.loopexit1319.us
  %.03231450.us = phi i32 [ 0, %.preheader1325.us ], [ %i.xu, %.loopexit1319.us ] ; 3 uses
  %.151449.us = phi <8 x float> [ %.141457.us, %.preheader1325.us ], [ %.18.us, %.loopexit1319.us ] ; 4 uses
  %.1412691448.us = phi <8 x float> [ %.1312681456.us, %.preheader1325.us ], [ %.171272.us, %.loopexit1319.us ] ; 4 uses
  %i.vl = mul nsw i32 %i.vg, %.03231450.us
  %.reass1455.us = add i32 %i.vl, %invariant.op1454.us ; 3 uses
  %i.vm = icmp slt i32 %.reass1455.us, 0
  br i1 %i.vm, label %.loopexit1319.us, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.vn = load i32, ptr %11, align 4, !tbaa !61   ; 2 uses
  %i.vo = srem i32 %.reass1455.us, %i.vn
  %i.vp = sdiv i32 %.reass1455.us, %i.vn          ; 2 uses
  %.not374.us = icmp eq i32 %i.vo, 0
  %.not375.us = icmp slt i32 %i.vp, %i.ae
  %or.cond1718 = select i1 %.not374.us, i1 %.not375.us, i1 false
  br i1 %or.cond1718, label %.preheader1318.us, label %.loopexit1319.us

.preheader1318.us:                                ; preds = %bb.t
  %i.vq = load i32, ptr %12, align 4, !tbaa !61   ; 3 uses
  %i.vr = icmp sgt i32 %i.vq, 0
  br i1 %i.vr, label %.lr.ph.us1465, label %.loopexit1319.us

bb.u:                                             ; preds = %.lr.ph.us1465, %bb.w
  %indvars.iv1539 = phi i64 [ 0, %.lr.ph.us1465 ], [ %indvars.iv.next1540, %bb.w ] ; 3 uses
  %.161445.us = phi <8 x float> [ %.151449.us, %.lr.ph.us1465 ], [ %.17.us, %bb.w ] ; 3 uses
  %.1512701444.us = phi <8 x float> [ %.1412691448.us, %.lr.ph.us1465 ], [ %.161271.us, %bb.w ] ; 3 uses
  %i.vs = trunc i64 %indvars.iv1539 to i32
  %i.vt = mul i32 %i.xv, %i.vs
  %.reass.us1464 = add i32 %i.vt, %invariant.op.us1466 ; 3 uses
  %i.vu = icmp slt i32 %.reass.us1464, 0
  br i1 %i.vu, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.vv = load i32, ptr %15, align 4, !tbaa !61   ; 2 uses
  %i.vw = srem i32 %.reass.us1464, %i.vv
  %i.vx = sdiv i32 %.reass.us1464, %i.vv          ; 2 uses
  %.not376.us = icmp eq i32 %i.vw, 0
  %.not377.us = icmp slt i32 %i.vx, %i.ad
  %or.cond1719 = select i1 %.not376.us, i1 %.not377.us, i1 false
  br i1 %or.cond1719, label %_ZN4ncnn3MatD2Ev.exit387.us, label %bb.w

_ZN4ncnn3MatD2Ev.exit387.us:                      ; preds = %bb.v
  %i.vy = trunc i64 %indvars.iv1539 to i32
  %i.vz = add i32 %i.xx, %i.vy
  %i.wa = shl nsw i32 %i.vz, 4
  %i.wb = zext nneg i32 %i.wa to i64
  %i.wc = getelementptr inbounds nuw [2 x i8], ptr %.23311458.us, i64 %i.wb ; 2 uses
  %i.wd = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !761
  %i.we = load ptr, ptr %4, align 8, !tbaa !20, !noalias !761 ; 2 uses
  %i.wf = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !761 ; 2 uses
  %i.wg = mul i64 %i.wf, %indvars.iv1545
  %i.wh = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !761 ; 3 uses
  %i.wi = mul i64 %i.wg, %i.wh
  %i.wj = getelementptr inbounds nuw i8, ptr %i.we, i64 %i.wi
  %i.wk = sext i32 %i.wd to i64
  %i.wl = mul nsw i64 %i.wk, %i.xy
  %i.wm = mul i64 %i.wl, %i.wh                    ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wj, i64 %i.wm
  %i.wo = mul i64 %i.wf, %i.vk
  %i.wp = mul i64 %i.wo, %i.wh
  %i.wq = getelementptr inbounds nuw i8, ptr %i.we, i64 %i.wp
  %i.wr = sext i32 %i.vx to i64                   ; 2 uses
  %i.ws = getelementptr inbounds [2 x i8], ptr %i.wn, i64 %i.wr
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wq, i64 %i.wm
  %i.wu = load i16, ptr %i.ws, align 2, !tbaa !89
  %i.wv = zext i16 %i.wu to i32
  %i.ww = shl nuw i32 %i.wv, 16
  %i.wx = insertelement <8 x i32> poison, i32 %i.ww, i64 0
  %i.wy = bitcast <8 x i32> %i.wx to <8 x float>
  %i.wz = shufflevector <8 x float> %i.wy, <8 x float> poison, <8 x i32> zeroinitializer
  %i.xa = getelementptr inbounds [2 x i8], ptr %i.wt, i64 %i.wr
  %i.xb = load i16, ptr %i.xa, align 2, !tbaa !89
  %i.xc = zext i16 %i.xb to i32
  %i.xd = shl nuw i32 %i.xc, 16
  %i.xe = insertelement <8 x i32> poison, i32 %i.xd, i64 0
  %i.xf = bitcast <8 x i32> %i.xe to <8 x float>
  %i.xg = shufflevector <8 x float> %i.xf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.xh = load <8 x i16>, ptr %i.wc, align 16, !tbaa !82 ; 2 uses
  %i.xi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.xh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.xj = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.xh, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.xk = shufflevector <8 x i16> %i.xi, <8 x i16> %i.xj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.xl = bitcast <16 x i16> %i.xk to <8 x float>
  %i.xm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.wz, <8 x float> nofpclass(nan inf) %i.xl, <8 x float> nofpclass(nan inf) %.161445.us)
  %i.xn = getelementptr inbounds nuw i8, ptr %i.wc, i64 16
  %i.xo = load <8 x i16>, ptr %i.xn, align 16, !tbaa !82 ; 2 uses
  %i.xp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.xo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.xq = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.xo, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.xr = shufflevector <8 x i16> %i.xp, <8 x i16> %i.xq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.xs = bitcast <16 x i16> %i.xr to <8 x float>
  %i.xt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.xg, <8 x float> nofpclass(nan inf) %i.xs, <8 x float> nofpclass(nan inf) %.1512701444.us)
  br label %bb.w

bb.w:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit387.us, %bb.v, %bb.u
  %.161271.us = phi nsz <8 x float> [ %.1512701444.us, %bb.u ], [ %i.xt, %_ZN4ncnn3MatD2Ev.exit387.us ], [ %.1512701444.us, %bb.v ] ; 2 uses
  %.17.us = phi nsz <8 x float> [ %.161445.us, %bb.u ], [ %i.xm, %_ZN4ncnn3MatD2Ev.exit387.us ], [ %.161445.us, %bb.v ] ; 2 uses
  %indvars.iv.next1540 = add nuw nsw i64 %indvars.iv1539, 1 ; 2 uses
  %exitcond1543.not = icmp eq i64 %indvars.iv.next1540, %wide.trip.count1542
  br i1 %exitcond1543.not, label %.loopexit1319.us, label %bb.u, !llvm.loop !745

.loopexit1319.us:                                 ; preds = %bb.w, %.preheader1318.us, %bb.t, %bb.s
  %.171272.us = phi nsz <8 x float> [ %.1412691448.us, %bb.s ], [ %.1412691448.us, %bb.t ], [ %.1412691448.us, %.preheader1318.us ], [ %.161271.us, %bb.w ] ; 3 uses
  %.18.us = phi nsz <8 x float> [ %.151449.us, %bb.s ], [ %.151449.us, %bb.t ], [ %.151449.us, %.preheader1318.us ], [ %.17.us, %bb.w ] ; 3 uses
  %i.xu = add nuw nsw i32 %.03231450.us, 1        ; 2 uses
  %exitcond1544.not = icmp eq i32 %i.xu, %i.ut
  br i1 %exitcond1544.not, label %._crit_edge.us1468, label %bb.s, !llvm.loop !746

.lr.ph.us1465:                                    ; preds = %.preheader1318.us
  %i.xv = load i32, ptr %13, align 4, !tbaa !61
  %i.xw = load i32, ptr %14, align 4, !tbaa !61
  %invariant.op.us1466 = sub i32 %.neg1309, %i.xw
  %i.xx = mul nuw nsw i32 %i.vq, %.03231450.us
  %i.xy = sext i32 %i.vp to i64
  %wide.trip.count1542 = zext nneg i32 %i.vq to i64
  br label %bb.u

._crit_edge.us1468:                               ; preds = %.loopexit1319.us
  %i.xz = getelementptr inbounds [2 x i8], ptr %.23311458.us, i64 %i.ux ; 2 uses
  %indvars.iv.next1546 = add nuw nsw i64 %indvars.iv1545, 2 ; 3 uses
  %i.ya = or disjoint i64 %indvars.iv.next1546, 1 ; 2 uses
end_hunk_1

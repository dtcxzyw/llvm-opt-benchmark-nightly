Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution_x86_avx?download=true
inline.NumInlined: 22
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZNK4ncnn21Deconvolution_x86_avx13forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.tr = insertelement <2 x i64> poison, i64 %i.tq, i64 0
  %i.ts = bitcast <2 x i64> %i.tr to <8 x i16>
  %i.tt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ts, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tu = bitcast <8 x i16> %i.tt to <4 x float>
  %i.tv = fmul fast <4 x float> %.sink3679.i, %i.tu
  %i.tw = fadd fast <4 x float> %i.tv, %i.sq
  %i.tx = getelementptr inbounds nuw i8, ptr %i.kq, i64 40
  %i.ty = load i64, ptr %i.tx, align 1, !tbaa !82
  %i.tz = insertelement <2 x i64> poison, i64 %i.ty, i64 0
  %i.ua = bitcast <2 x i64> %i.tz to <8 x i16>
  %i.ub = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ua, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.uc = bitcast <8 x i16> %i.ub to <4 x float>
  %i.ud = fmul fast <4 x float> %.sink3674.i, %i.uc
  %i.ue = fadd fast <4 x float> %i.ud, %i.sy
  %i.uf = getelementptr inbounds nuw i8, ptr %i.kq, i64 48
  %i.ug = load i64, ptr %i.uf, align 1, !tbaa !82
  %i.uh = insertelement <2 x i64> poison, i64 %i.ug, i64 0
  %i.ui = bitcast <2 x i64> %i.uh to <8 x i16>
  %i.uj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ui, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.uk = bitcast <8 x i16> %i.uj to <4 x float>
  %i.ul = fmul fast <4 x float> %.sink3669.i, %i.uk
  %i.um = fadd fast <4 x float> %i.ul, %i.tg
  %i.un = getelementptr inbounds nuw i8, ptr %i.kq, i64 56
  %i.uo = load i64, ptr %i.un, align 1, !tbaa !82
  %i.up = insertelement <2 x i64> poison, i64 %i.uo, i64 0
  %i.uq = bitcast <2 x i64> %i.up to <8 x i16>
  %i.ur = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.uq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.us = bitcast <8 x i16> %i.ur to <4 x float>
  %i.ut = fmul fast <4 x float> %i.sj, %i.us
  %i.uu = fadd fast <4 x float> %i.ut, %i.to
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split.i, %bb.ac, %bb.ab, %bb.aa
  %.32427.us.us.i = phi nsz <4 x float> [ %.224262587.us.us.i, %bb.aa ], [ %.224262587.us.us.i, %bb.ac ], [ %.224262587.us.us.i, %bb.ab ], [ %i.uu, %.sink.split.i ] ; 2 uses
  %.32417.us.us.i = phi nsz <4 x float> [ %.224162588.us.us.i, %bb.aa ], [ %.224162588.us.us.i, %bb.ac ], [ %.224162588.us.us.i, %bb.ab ], [ %i.um, %.sink.split.i ] ; 2 uses
  %.32402.us.us.i = phi nsz <4 x float> [ %.224012589.us.us.i, %bb.aa ], [ %.224012589.us.us.i, %bb.ac ], [ %.224012589.us.us.i, %bb.ab ], [ %i.ue, %.sink.split.i ] ; 2 uses
  %.42386.us.us.i = phi nsz <4 x float> [ %.323852590.us.us.i, %bb.aa ], [ %.323852590.us.us.i, %bb.ac ], [ %.323852590.us.us.i, %bb.ab ], [ %i.tw, %.sink.split.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.jq
  br i1 %exitcond.not.i, label %..loopexit2577_crit_edge.us.us.i, label %bb.aa, !llvm.loop !535

..loopexit2577_crit_edge.us.us.i:                 ; preds = %bb.ad, %bb.z, %.lr.ph2600.split.us.us.i
  %.42428.us.us.i = phi nsz <4 x float> [ %.124252595.us.us.i, %.lr.ph2600.split.us.us.i ], [ %.124252595.us.us.i, %bb.z ], [ %.32427.us.us.i, %bb.ad ] ; 2 uses
  %.42418.us.us.i = phi nsz <4 x float> [ %.124152596.us.us.i, %.lr.ph2600.split.us.us.i ], [ %.124152596.us.us.i, %bb.z ], [ %.32417.us.us.i, %bb.ad ] ; 2 uses
  %.42403.us.us.i = phi nsz <4 x float> [ %.124002597.us.us.i, %.lr.ph2600.split.us.us.i ], [ %.124002597.us.us.i, %bb.z ], [ %.32402.us.us.i, %bb.ad ] ; 2 uses
  %.5.us.us.i = phi nsz <4 x float> [ %.223842598.us.us.i, %.lr.ph2600.split.us.us.i ], [ %.223842598.us.us.i, %bb.z ], [ %.42386.us.us.i, %bb.ad ] ; 2 uses
  %indvars.iv.next3340.i = add nuw nsw i64 %indvars.iv3339.i, 1 ; 2 uses
  %exitcond3343.not.i = icmp eq i64 %indvars.iv.next3340.i, %wide.trip.count3342.i
  br i1 %exitcond3343.not.i, label %._crit_edge.us.i, label %.lr.ph2600.split.us.us.i, !llvm.loop !536

._crit_edge.us.i:                                 ; preds = %..loopexit2577_crit_edge.us.us.i, %.preheader2581.us.i
  %.us-phi.us.i = phi <4 x float> [ %.024242610.us.i, %.preheader2581.us.i ], [ %.42428.us.us.i, %..loopexit2577_crit_edge.us.us.i ] ; 2 uses
  %.us-phi2607.us.i = phi <4 x float> [ %.024142611.us.i, %.preheader2581.us.i ], [ %.42418.us.us.i, %..loopexit2577_crit_edge.us.us.i ] ; 2 uses
  %.us-phi2608.us.i = phi <4 x float> [ %.023992612.us.i, %.preheader2581.us.i ], [ %.42403.us.us.i, %..loopexit2577_crit_edge.us.us.i ] ; 2 uses
  %.us-phi2609.us.i = phi <4 x float> [ %.123832613.us.i, %.preheader2581.us.i ], [ %.5.us.us.i, %..loopexit2577_crit_edge.us.us.i ] ; 2 uses
  %i.uv = getelementptr inbounds [2 x i8], ptr %.07512615.us.i, i64 %i.ir ; 2 uses
  %indvars.iv.next3345.i = add nuw nsw i64 %indvars.iv3344.i, 8 ; 2 uses
  %i.uw = icmp slt i64 %indvars.iv.next3345.i, %invariant.op3660.i
  br i1 %i.uw, label %.preheader2581.us.i, label %.preheader2584.i, !llvm.loop !537

.preheader2584.i:                                 ; preds = %._crit_edge.us.i, %.preheader2581.preheader.i, %_ZN4ncnn3MatD2Ev.exit977.i
  %.02424.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit977.i ], [ zeroinitializer, %.preheader2581.preheader.i ], [ %.us-phi.us.i, %._crit_edge.us.i ] ; 4 uses
  %.02414.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit977.i ], [ zeroinitializer, %.preheader2581.preheader.i ], [ %.us-phi2607.us.i, %._crit_edge.us.i ] ; 4 uses
  %.02399.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit977.i ], [ zeroinitializer, %.preheader2581.preheader.i ], [ %.us-phi2608.us.i, %._crit_edge.us.i ] ; 4 uses
  %.12383.lcssa.i = phi <4 x float> [ %.02382.i, %_ZN4ncnn3MatD2Ev.exit977.i ], [ %.02382.i, %.preheader2581.preheader.i ], [ %.us-phi2609.us.i, %._crit_edge.us.i ] ; 4 uses
  %.0756.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit977.i ], [ %i.ij, %.preheader2581.preheader.i ], [ %i.ij, %._crit_edge.us.i ] ; 7 uses
  %.0751.lcssa.i = phi ptr [ %i.jh, %_ZN4ncnn3MatD2Ev.exit977.i ], [ %scevgep3337.i, %.preheader2581.preheader.i ], [ %i.uv, %._crit_edge.us.i ] ; 4 uses
  %i.ux = or disjoint i32 %.0756.lcssa.i, 3       ; 2 uses
  %i.uy = icmp slt i32 %i.ux, %i.he
  br i1 %i.uy, label %.preheader2580.lr.ph.i, label %.preheader2583.i

.preheader2580.lr.ph.i:                           ; preds = %.preheader2584.i
  %i.uz = load i32, ptr %i.d, align 4             ; 2 uses
  %i.va = load i32, ptr %i.j, align 4
  %invariant.op2681.i = sub i32 %.neg2539.i, %i.va ; 2 uses
  %i.vb = load i32, ptr %i.f, align 4             ; 4 uses
  %i.vc = load i32, ptr %i.a, align 4
  %.fr.i = freeze i32 %i.vc                       ; 2 uses
  %i.vd = load i32, ptr %i.c, align 4             ; 2 uses
  %i.ve = load i32, ptr %i.i, align 4
  %.neg2537.i = add nuw nsw i32 %.07482804.i, 1
  %invariant.op2645.i = sub i32 %.neg2537.i, %i.ve ; 2 uses
  %i.vf = load i32, ptr %i.e, align 4             ; 4 uses
  br i1 %i.io, label %.preheader2580.lr.ph.split.us.i, label %.preheader2580.preheader.i

.preheader2580.preheader.i:                       ; preds = %.preheader2580.lr.ph.i
  %i.vg = sub i32 %i.il, %.0756.lcssa.i           ; 2 uses
  %i.vh = lshr i32 %i.vg, 1
  %i.vi = and i32 %i.vh, 2147483646
  %narrow3636.i = add nuw i32 %i.vi, 2
  %i.vj = zext i32 %narrow3636.i to i64
  %i.vk = mul nsw i64 %i.vj, %i.it
  %scevgep3347.i = getelementptr i8, ptr %.0751.lcssa.i, i64 %i.vk
  %i.vl = add i32 %.0756.lcssa.i, 4
  %i.vm = and i32 %i.vg, -4
  %i.vn = add i32 %i.vl, %i.vm
  br label %.preheader2583.i

.preheader2580.lr.ph.split.us.i:                  ; preds = %.preheader2580.lr.ph.i
  %i.vo = icmp sgt i32 %.fr.i, 0
  br i1 %i.vo, label %.preheader2580.us.us.preheader.i, label %.preheader2580.us.preheader.i

.preheader2580.us.preheader.i:                    ; preds = %.preheader2580.lr.ph.split.us.i
  %i.vp = sub i32 %i.il, %.0756.lcssa.i           ; 2 uses
  %i.vq = lshr i32 %i.vp, 1
  %i.vr = and i32 %i.vq, 2147483646
  %narrow3637.i = add nuw i32 %i.vr, 2
  %i.vs = zext i32 %narrow3637.i to i64
  %i.vt = mul nsw i64 %i.vs, %i.it
  %scevgep3348.i = getelementptr i8, ptr %.0751.lcssa.i, i64 %i.vt
  %i.vu = add i32 %.0756.lcssa.i, 4
  %i.vv = and i32 %i.vp, -4
  %i.vw = add i32 %i.vu, %i.vv
  br label %.preheader2583.i

.preheader2580.us.us.preheader.i:                 ; preds = %.preheader2580.lr.ph.split.us.i
  %i.vx = zext nneg i32 %.fr.i to i64             ; 4 uses
  %i.vy = zext i32 %.0756.lcssa.i to i64
  %i.vz = zext nneg i32 %i.ux to i64
  br label %.preheader2580.us.us.i

.preheader2580.us.us.i:                           ; preds = %._crit_edge.split.us.us2717.us.i, %.preheader2580.us.us.preheader.i
  %indvars.iv3364.i = phi i64 [ %i.vy, %.preheader2580.us.us.preheader.i ], [ %indvars.iv.next3365.i, %._crit_edge.split.us.us2717.us.i ] ; 5 uses
  %i.wa = phi i64 [ %i.vz, %.preheader2580.us.us.preheader.i ], [ %i.acl, %._crit_edge.split.us.us2717.us.i ]
  %.17522702.us.us.i = phi ptr [ %.0751.lcssa.i, %.preheader2580.us.us.preheader.i ], [ %i.ack, %._crit_edge.split.us.us2717.us.i ] ; 3 uses
  %.623872700.us.us.i = phi <4 x float> [ %.12383.lcssa.i, %.preheader2580.us.us.preheader.i ], [ %.us-phi76, %._crit_edge.split.us.us2717.us.i ] ; 3 uses
  %.524042699.us.us.i = phi <4 x float> [ %.02399.lcssa.i, %.preheader2580.us.us.preheader.i ], [ %.us-phi75, %._crit_edge.split.us.us2717.us.i ] ; 3 uses
  %.524192698.us.us.i = phi <4 x float> [ %.02414.lcssa.i, %.preheader2580.us.us.preheader.i ], [ %.us-phi74, %._crit_edge.split.us.us2717.us.i ] ; 3 uses
  %.524292697.us.us.i = phi <4 x float> [ %.02424.lcssa.i, %.preheader2580.us.us.preheader.i ], [ %.us-phi, %._crit_edge.split.us.us2717.us.i ] ; 3 uses
  %i.wb = add nuw nsw i64 %indvars.iv3364.i, 1
  %i.wc = add nuw nsw i64 %indvars.iv3364.i, 2
  %i.wd = lshr exact i64 %indvars.iv3364.i, 2
  switch i32 %.fr2670.i, label %._crit_edge.split.us.us2717.us.i [
    i32 4, label %.preheader2580.us.us.i.split.us
    i32 1, label %.preheader2580.us.us.i.split.us77
  ]

.preheader2580.us.us.i.split.us:                  ; preds = %.preheader2580.us.us.i, %..loopexit2575_crit_edge.us.us.us.i.us
  %indvars.iv3359.i.us = phi i64 [ %indvars.iv.next3360.i.us, %..loopexit2575_crit_edge.us.us.us.i.us ], [ 0, %.preheader2580.us.us.i ] ; 3 uses
  %.72674.us.us.us.i.us = phi <4 x float> [ %.102390.us.us.us.i.us, %..loopexit2575_crit_edge.us.us.us.i.us ], [ %.623872700.us.us.i, %.preheader2580.us.us.i ] ; 3 uses
  %.624052673.us.us.us.i.us = phi <4 x float> [ %.92408.us.us.us.i.us, %..loopexit2575_crit_edge.us.us.us.i.us ], [ %.524042699.us.us.i, %.preheader2580.us.us.i ] ; 3 uses
  %.624202672.us.us.us.i.us = phi <4 x float> [ %.92423.us.us.us.i.us, %..loopexit2575_crit_edge.us.us.us.i.us ], [ %.524192698.us.us.i, %.preheader2580.us.us.i ] ; 3 uses
  %.624302671.us.us.us.i.us = phi <4 x float> [ %.92433.us.us.us.i.us, %..loopexit2575_crit_edge.us.us.us.i.us ], [ %.524292697.us.us.i, %.preheader2580.us.us.i ] ; 3 uses
  %i.we = trunc i64 %indvars.iv3359.i.us to i32
  %i.wf = mul i32 %i.uz, %i.we
  %.reass2682.us.us.us.i.us = add i32 %i.wf, %invariant.op2681.i ; 3 uses
  %i.wg = icmp slt i32 %.reass2682.us.us.us.i.us, 0
  br i1 %i.wg, label %..loopexit2575_crit_edge.us.us.us.i.us, label %bb.ae

bb.ae:                                            ; preds = %.preheader2580.us.us.i.split.us
  %i.wh = srem i32 %.reass2682.us.us.us.i.us, %i.vb
  %i.wi = sdiv i32 %.reass2682.us.us.us.i.us, %i.vb ; 2 uses
  %.not930.us.us.us.i.us = icmp eq i32 %i.wh, 0
  %.not931.us.us.us.i.us = icmp slt i32 %i.wi, %i.hg
  %or.cond300 = select i1 %.not930.us.us.us.i.us, i1 %.not931.us.us.us.i.us, i1 false
  br i1 %or.cond300, label %.preheader2574.us.us.us.i.us, label %..loopexit2575_crit_edge.us.us.us.i.us

.preheader2574.us.us.us.i.us:                     ; preds = %bb.ae
  %i.wj = mul nuw nsw i64 %indvars.iv3359.i.us, %i.vx
  %i.wk = sext i32 %i.wi to i64
  br label %.lr.ph.split.us.us.us.us.i.us

.lr.ph.split.us.us.us.us.i.us:                    ; preds = %.preheader2574.us.us.us.i.us, %bb.ag
  %indvars.iv3354.i.us = phi i64 [ %indvars.iv.next3355.i.us, %bb.ag ], [ 0, %.preheader2574.us.us.us.i.us ] ; 3 uses
  %.823882639.us.us.us.us.i.us = phi <4 x float> [ %.92389.us.us.us.us.i.us, %bb.ag ], [ %.72674.us.us.us.i.us, %.preheader2574.us.us.us.i.us ] ; 3 uses
  %.724062638.us.us.us.us.i.us = phi <4 x float> [ %.82407.us.us.us.us.i.us, %bb.ag ], [ %.624052673.us.us.us.i.us, %.preheader2574.us.us.us.i.us ] ; 3 uses
  %.724212637.us.us.us.us.i.us = phi <4 x float> [ %.82422.us.us.us.us.i.us, %bb.ag ], [ %.624202672.us.us.us.i.us, %.preheader2574.us.us.us.i.us ] ; 3 uses
  %.724312636.us.us.us.us.i.us = phi <4 x float> [ %.82432.us.us.us.us.i.us, %bb.ag ], [ %.624302671.us.us.us.i.us, %.preheader2574.us.us.us.i.us ] ; 3 uses
  %i.wl = trunc i64 %indvars.iv3354.i.us to i32
  %i.wm = mul i32 %i.vd, %i.wl
  %.reass.us.us2683.us.us.i.us = add i32 %i.wm, %invariant.op2645.i ; 3 uses
  %i.wn = icmp slt i32 %.reass.us.us2683.us.us.i.us, 0
  br i1 %i.wn, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph.split.us.us.us.us.i.us
  %i.wo = srem i32 %.reass.us.us2683.us.us.i.us, %i.vf
  %i.wp = sdiv i32 %.reass.us.us2683.us.us.i.us, %i.vf ; 2 uses
  %.not932.us.us.us.us.i.us = icmp eq i32 %i.wo, 0
  %.not933.us.us.us.us.i.us = icmp slt i32 %i.wp, %i.hf
  %or.cond301 = select i1 %.not932.us.us.us.us.i.us, i1 %.not933.us.us.us.us.i.us, i1 false
  br i1 %or.cond301, label %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us, label %bb.ag

_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us:        ; preds = %bb.af
  %i.wq = add nuw nsw i64 %indvars.iv3354.i.us, %i.wj
  %i.wr = shl i64 %i.wq, 4
  %i.ws = and i64 %i.wr, 4294967280
  %i.wt = getelementptr inbounds nuw [2 x i8], ptr %.17522702.us.us.i, i64 %i.ws ; 4 uses
  %i.wu = load i32, ptr %i.o, align 4, !tbaa !54, !noalias !625
  %i.wv = load ptr, ptr %1, align 8, !tbaa !20, !noalias !625
  %i.ww = load i64, ptr %i.fk, align 8, !tbaa !21, !noalias !625
  %i.wx = mul i64 %i.ww, %i.wd
  %i.wy = load i64, ptr %i.fl, align 8, !tbaa !55, !noalias !625 ; 2 uses
  %i.wz = mul i64 %i.wx, %i.wy
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wv, i64 %i.wz
  %i.xb = sext i32 %i.wu to i64
  %i.xc = mul nsw i64 %i.xb, %i.wk
  %i.xd = mul i64 %i.xc, %i.wy
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xa, i64 %i.xd
  %i.xf = shl nsw i32 %i.wp, 2
  %i.xg = sext i32 %i.xf to i64
  %i.xh = getelementptr inbounds [2 x i8], ptr %i.xe, i64 %i.xg ; 4 uses
  %5 = load i16, ptr %i.xh, align 2, !tbaa !89
  %6 = zext i16 %5 to i32
  %7 = shl nuw i32 %6, 16
  %8 = insertelement <4 x i32> poison, i32 %7, i64 0
  %i.xi = bitcast <4 x i32> %8 to <4 x float>
  %i.xj = shufflevector <4 x float> %i.xi, <4 x float> poison, <4 x i32> zeroinitializer
  %9 = getelementptr inbounds nuw i8, ptr %i.xh, i64 2
  %10 = load i16, ptr %9, align 2, !tbaa !89
  %11 = zext i16 %10 to i32
  %12 = shl nuw i32 %11, 16
  %13 = insertelement <4 x i32> poison, i32 %12, i64 0
  %i.xk = bitcast <4 x i32> %13 to <4 x float>
  %14 = shufflevector <4 x float> %i.xk, <4 x float> poison, <4 x i32> zeroinitializer
  %15 = getelementptr inbounds nuw i8, ptr %i.xh, i64 4
  %16 = load i16, ptr %15, align 2, !tbaa !89
  %17 = zext i16 %16 to i32
  %18 = shl nuw i32 %17, 16
  %19 = insertelement <4 x i32> poison, i32 %18, i64 0
  %i.xl = bitcast <4 x i32> %19 to <4 x float>
  %20 = shufflevector <4 x float> %i.xl, <4 x float> poison, <4 x i32> zeroinitializer
  %21 = getelementptr inbounds nuw i8, ptr %i.xh, i64 6
  %22 = load i16, ptr %21, align 2, !tbaa !89
  %23 = zext i16 %22 to i32
  %24 = shl nuw i32 %23, 16
  %25 = insertelement <4 x i32> poison, i32 %24, i64 0
  %i.xm = bitcast <4 x i32> %25 to <4 x float>
  %26 = shufflevector <4 x float> %i.xm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xn = load i64, ptr %i.wt, align 1, !tbaa !82
  %i.xo = insertelement <2 x i64> poison, i64 %i.xn, i64 0
  %i.xp = bitcast <2 x i64> %i.xo to <8 x i16>
  %i.xq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.xp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.xr = bitcast <8 x i16> %i.xq to <4 x float>
  %i.xs = fmul fast <4 x float> %i.xj, %i.xr
  %i.xt = fadd fast <4 x float> %i.xs, %.823882639.us.us.us.us.i.us
  %i.xu = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  %i.xv = load i64, ptr %i.xu, align 1, !tbaa !82
  %i.xw = insertelement <2 x i64> poison, i64 %i.xv, i64 0
  %i.xx = bitcast <2 x i64> %i.xw to <8 x i16>
  %i.xy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.xx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.xz = bitcast <8 x i16> %i.xy to <4 x float>
  %i.ya = fmul fast <4 x float> %14, %i.xz
  %i.yb = fadd fast <4 x float> %i.ya, %.724062638.us.us.us.us.i.us
  %i.yc = getelementptr inbounds nuw i8, ptr %i.wt, i64 16
  %i.yd = load i64, ptr %i.yc, align 1, !tbaa !82
  %i.ye = insertelement <2 x i64> poison, i64 %i.yd, i64 0
  %i.yf = bitcast <2 x i64> %i.ye to <8 x i16>
  %i.yg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yh = bitcast <8 x i16> %i.yg to <4 x float>
  %i.yi = fmul fast <4 x float> %20, %i.yh
  %i.yj = fadd fast <4 x float> %i.yi, %.724212637.us.us.us.us.i.us
  %i.yk = getelementptr inbounds nuw i8, ptr %i.wt, i64 24
  %i.yl = load i64, ptr %i.yk, align 1, !tbaa !82
  %i.ym = insertelement <2 x i64> poison, i64 %i.yl, i64 0
  %i.yn = bitcast <2 x i64> %i.ym to <8 x i16>
  %i.yo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yp = bitcast <8 x i16> %i.yo to <4 x float>
  %i.yq = fmul fast <4 x float> %26, %i.yp
  %i.yr = fadd fast <4 x float> %i.yq, %.724312636.us.us.us.us.i.us
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us, %bb.af, %.lr.ph.split.us.us.us.us.i.us
  %.82432.us.us.us.us.i.us = phi nsz <4 x float> [ %.724312636.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.724312636.us.us.us.us.i.us, %bb.af ], [ %i.yr, %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us ] ; 2 uses
  %.82422.us.us.us.us.i.us = phi nsz <4 x float> [ %.724212637.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.724212637.us.us.us.us.i.us, %bb.af ], [ %i.yj, %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us ] ; 2 uses
  %.82407.us.us.us.us.i.us = phi nsz <4 x float> [ %.724062638.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.724062638.us.us.us.us.i.us, %bb.af ], [ %i.yb, %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us ] ; 2 uses
  %.92389.us.us.us.us.i.us = phi nsz <4 x float> [ %.823882639.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.823882639.us.us.us.us.i.us, %bb.af ], [ %i.xt, %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us ] ; 2 uses
  %indvars.iv.next3355.i.us = add nuw nsw i64 %indvars.iv3354.i.us, 1 ; 2 uses
  %exitcond3358.not.i.us = icmp eq i64 %indvars.iv.next3355.i.us, %i.vx
  br i1 %exitcond3358.not.i.us, label %..loopexit2575_crit_edge.us.us.us.i.us, label %.lr.ph.split.us.us.us.us.i.us, !llvm.loop !540

..loopexit2575_crit_edge.us.us.us.i.us:           ; preds = %bb.ag, %bb.ae, %.preheader2580.us.us.i.split.us
  %.92433.us.us.us.i.us = phi nsz <4 x float> [ %.624302671.us.us.us.i.us, %.preheader2580.us.us.i.split.us ], [ %.624302671.us.us.us.i.us, %bb.ae ], [ %.82432.us.us.us.us.i.us, %bb.ag ] ; 2 uses
  %.92423.us.us.us.i.us = phi nsz <4 x float> [ %.624202672.us.us.us.i.us, %.preheader2580.us.us.i.split.us ], [ %.624202672.us.us.us.i.us, %bb.ae ], [ %.82422.us.us.us.us.i.us, %bb.ag ] ; 2 uses
  %.92408.us.us.us.i.us = phi nsz <4 x float> [ %.624052673.us.us.us.i.us, %.preheader2580.us.us.i.split.us ], [ %.624052673.us.us.us.i.us, %bb.ae ], [ %.82407.us.us.us.us.i.us, %bb.ag ] ; 2 uses
  %.102390.us.us.us.i.us = phi nsz <4 x float> [ %.72674.us.us.us.i.us, %.preheader2580.us.us.i.split.us ], [ %.72674.us.us.us.i.us, %bb.ae ], [ %.92389.us.us.us.us.i.us, %bb.ag ] ; 2 uses
  %indvars.iv.next3360.i.us = add nuw nsw i64 %indvars.iv3359.i.us, 1 ; 2 uses
  %exitcond3363.not.i.us = icmp eq i64 %indvars.iv.next3360.i.us, %wide.trip.count3342.i
  br i1 %exitcond3363.not.i.us, label %._crit_edge.split.us.us2717.us.i, label %.preheader2580.us.us.i.split.us, !llvm.loop !541

.preheader2580.us.us.i.split.us77:                ; preds = %.preheader2580.us.us.i, %..loopexit2575_crit_edge.us.us.us.i.us87
  %indvars.iv3359.i.us78 = phi i64 [ %indvars.iv.next3360.i.us92, %..loopexit2575_crit_edge.us.us.us.i.us87 ], [ 0, %.preheader2580.us.us.i ] ; 3 uses
  %.72674.us.us.us.i.us79 = phi <4 x float> [ %.102390.us.us.us.i.us91, %..loopexit2575_crit_edge.us.us.us.i.us87 ], [ %.623872700.us.us.i, %.preheader2580.us.us.i ] ; 3 uses
  %.624052673.us.us.us.i.us80 = phi <4 x float> [ %.92408.us.us.us.i.us90, %..loopexit2575_crit_edge.us.us.us.i.us87 ], [ %.524042699.us.us.i, %.preheader2580.us.us.i ] ; 3 uses
  %.624202672.us.us.us.i.us81 = phi <4 x float> [ %.92423.us.us.us.i.us89, %..loopexit2575_crit_edge.us.us.us.i.us87 ], [ %.524192698.us.us.i, %.preheader2580.us.us.i ] ; 3 uses
  %.624302671.us.us.us.i.us82 = phi <4 x float> [ %.92433.us.us.us.i.us88, %..loopexit2575_crit_edge.us.us.us.i.us87 ], [ %.524292697.us.us.i, %.preheader2580.us.us.i ] ; 3 uses
  %i.ys = trunc i64 %indvars.iv3359.i.us78 to i32
  %i.yt = mul i32 %i.uz, %i.ys
  %.reass2682.us.us.us.i.us83 = add i32 %i.yt, %invariant.op2681.i ; 3 uses
  %i.yu = icmp slt i32 %.reass2682.us.us.us.i.us83, 0
  br i1 %i.yu, label %..loopexit2575_crit_edge.us.us.us.i.us87, label %bb.ah

bb.ah:                                            ; preds = %.preheader2580.us.us.i.split.us77
  %i.yv = srem i32 %.reass2682.us.us.us.i.us83, %i.vb
  %i.yw = sdiv i32 %.reass2682.us.us.us.i.us83, %i.vb ; 2 uses
  %.not930.us.us.us.i.us84 = icmp eq i32 %i.yv, 0
  %.not931.us.us.us.i.us85 = icmp slt i32 %i.yw, %i.hg
  %or.cond302 = select i1 %.not930.us.us.us.i.us84, i1 %.not931.us.us.us.i.us85, i1 false
  br i1 %or.cond302, label %.preheader2574.us.us.us.i.us86, label %..loopexit2575_crit_edge.us.us.us.i.us87

.preheader2574.us.us.us.i.us86:                   ; preds = %bb.ah
  %i.yx = mul nuw nsw i64 %indvars.iv3359.i.us78, %i.vx
  %i.yy = sext i32 %i.yw to i64
  br label %.lr.ph.split.us2649.us.us.us.i.us

.lr.ph.split.us2649.us.us.us.i.us:                ; preds = %.preheader2574.us.us.us.i.us86, %bb.aj
  %indvars.iv3349.i.us = phi i64 [ %indvars.iv.next3350.i.us, %bb.aj ], [ 0, %.preheader2574.us.us.us.i.us86 ] ; 3 uses
  %.823882639.us2651.us.us.us.i.us = phi <4 x float> [ %.92389.us2661.us.us.us.i.us, %bb.aj ], [ %.72674.us.us.us.i.us79, %.preheader2574.us.us.us.i.us86 ] ; 3 uses
  %.724062638.us2652.us.us.us.i.us = phi <4 x float> [ %.82407.us2660.us.us.us.i.us, %bb.aj ], [ %.624052673.us.us.us.i.us80, %.preheader2574.us.us.us.i.us86 ] ; 3 uses
  %.724212637.us2653.us.us.us.i.us = phi <4 x float> [ %.82422.us2659.us.us.us.i.us, %bb.aj ], [ %.624202672.us.us.us.i.us81, %.preheader2574.us.us.us.i.us86 ] ; 3 uses
  %.724312636.us2654.us.us.us.i.us = phi <4 x float> [ %.82432.us2658.us.us.us.i.us, %bb.aj ], [ %.624302671.us.us.us.i.us82, %.preheader2574.us.us.us.i.us86 ] ; 3 uses
  %i.yz = trunc i64 %indvars.iv3349.i.us to i32
  %i.za = mul i32 %i.vd, %i.yz
  %.reass.us2655.us.us.us.i.us = add i32 %i.za, %invariant.op2645.i ; 3 uses
  %i.zb = icmp slt i32 %.reass.us2655.us.us.us.i.us, 0
  br i1 %i.zb, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.split.us2649.us.us.us.i.us
  %i.zc = srem i32 %.reass.us2655.us.us.us.i.us, %i.vf
  %i.zd = sdiv i32 %.reass.us2655.us.us.us.i.us, %i.vf ; 2 uses
  %.not932.us2656.us.us.us.i.us = icmp eq i32 %i.zc, 0
  %.not933.us2657.us.us.us.i.us = icmp slt i32 %i.zd, %i.hf
  %or.cond303 = select i1 %.not932.us2656.us.us.us.i.us, i1 %.not933.us2657.us.us.us.i.us, i1 false
  br i1 %or.cond303, label %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us, label %bb.aj

_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us:        ; preds = %bb.ai
  %i.ze = add nuw nsw i64 %indvars.iv3349.i.us, %i.yx
  %i.zf = shl i64 %i.ze, 4
  %i.zg = and i64 %i.zf, 4294967280
  %i.zh = getelementptr inbounds nuw [2 x i8], ptr %.17522702.us.us.i, i64 %i.zg ; 4 uses
  %i.zi = load i32, ptr %i.o, align 4, !tbaa !54, !noalias !626
  %i.zj = load ptr, ptr %1, align 8, !tbaa !20, !noalias !626 ; 4 uses
  %i.zk = load i64, ptr %i.fk, align 8, !tbaa !21, !noalias !626
  %i.zl = load i64, ptr %i.fl, align 8, !tbaa !55, !noalias !626 ; 2 uses
  %i.zm = mul i64 %i.zl, %i.zk                    ; 4 uses
  %i.zn = mul i64 %i.zm, %indvars.iv3364.i
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zj, i64 %i.zn
  %i.zp = sext i32 %i.zi to i64
  %i.zq = mul nsw i64 %i.zp, %i.yy
  %i.zr = mul i64 %i.zq, %i.zl                    ; 4 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zo, i64 %i.zr
  %i.zt = sext i32 %i.zd to i64                   ; 4 uses
  %i.zu = getelementptr inbounds [2 x i8], ptr %i.zs, i64 %i.zt
  %i.zv = load i16, ptr %i.zu, align 2, !tbaa !89
  %i.zw = zext i16 %i.zv to i32
  %i.zx = shl nuw i32 %i.zw, 16
  %i.zy = insertelement <4 x i32> poison, i32 %i.zx, i64 0
  %i.zz = bitcast <4 x i32> %i.zy to <4 x float>
  %i.aaa = shufflevector <4 x float> %i.zz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aab = mul i64 %i.zm, %i.wb
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zj, i64 %i.aab
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 %i.zr
  %i.aae = getelementptr inbounds [2 x i8], ptr %i.aad, i64 %i.zt
  %i.aaf = load i16, ptr %i.aae, align 2, !tbaa !89
  %i.aag = zext i16 %i.aaf to i32
  %i.aah = shl nuw i32 %i.aag, 16
  %i.aai = insertelement <4 x i32> poison, i32 %i.aah, i64 0
  %i.aaj = bitcast <4 x i32> %i.aai to <4 x float>
  %i.aak = shufflevector <4 x float> %i.aaj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aal = mul i64 %i.zm, %i.wc
  %i.aam = getelementptr inbounds nuw i8, ptr %i.zj, i64 %i.aal
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 %i.zr
  %i.aao = getelementptr inbounds [2 x i8], ptr %i.aan, i64 %i.zt
  %i.aap = load i16, ptr %i.aao, align 2, !tbaa !89
  %i.aaq = zext i16 %i.aap to i32
  %i.aar = shl nuw i32 %i.aaq, 16
  %i.aas = insertelement <4 x i32> poison, i32 %i.aar, i64 0
  %i.aat = bitcast <4 x i32> %i.aas to <4 x float>
  %i.aau = shufflevector <4 x float> %i.aat, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aav = mul i64 %i.zm, %i.wa
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.zj, i64 %i.aav
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 %i.zr
  %i.aay = getelementptr inbounds [2 x i8], ptr %i.aax, i64 %i.zt
  %i.aaz = load i16, ptr %i.aay, align 2, !tbaa !89
  %i.aba = zext i16 %i.aaz to i32
  %i.abb = shl nuw i32 %i.aba, 16
  %i.abc = insertelement <4 x i32> poison, i32 %i.abb, i64 0
  %i.abd = bitcast <4 x i32> %i.abc to <4 x float>
  %i.abe = shufflevector <4 x float> %i.abd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abf = load i64, ptr %i.zh, align 1, !tbaa !82
  %i.abg = insertelement <2 x i64> poison, i64 %i.abf, i64 0
  %i.abh = bitcast <2 x i64> %i.abg to <8 x i16>
  %i.abi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.abh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.abj = bitcast <8 x i16> %i.abi to <4 x float>
  %i.abk = fmul fast <4 x float> %i.aaa, %i.abj
  %i.abl = fadd fast <4 x float> %i.abk, %.823882639.us2651.us.us.us.i.us
  %i.abm = getelementptr inbounds nuw i8, ptr %i.zh, i64 8
  %i.abn = load i64, ptr %i.abm, align 1, !tbaa !82
  %i.abo = insertelement <2 x i64> poison, i64 %i.abn, i64 0
  %i.abp = bitcast <2 x i64> %i.abo to <8 x i16>
  %i.abq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.abp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.abr = bitcast <8 x i16> %i.abq to <4 x float>
  %i.abs = fmul fast <4 x float> %i.aak, %i.abr
  %i.abt = fadd fast <4 x float> %i.abs, %.724062638.us2652.us.us.us.i.us
  %i.abu = getelementptr inbounds nuw i8, ptr %i.zh, i64 16
  %i.abv = load i64, ptr %i.abu, align 1, !tbaa !82
  %i.abw = insertelement <2 x i64> poison, i64 %i.abv, i64 0
  %i.abx = bitcast <2 x i64> %i.abw to <8 x i16>
  %i.aby = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.abx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.abz = bitcast <8 x i16> %i.aby to <4 x float>
  %i.aca = fmul fast <4 x float> %i.aau, %i.abz
  %i.acb = fadd fast <4 x float> %i.aca, %.724212637.us2653.us.us.us.i.us
  %i.acc = getelementptr inbounds nuw i8, ptr %i.zh, i64 24
  %i.acd = load i64, ptr %i.acc, align 1, !tbaa !82
  %i.ace = insertelement <2 x i64> poison, i64 %i.acd, i64 0
  %i.acf = bitcast <2 x i64> %i.ace to <8 x i16>
  %i.acg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.acf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ach = bitcast <8 x i16> %i.acg to <4 x float>
  %i.aci = fmul fast <4 x float> %i.abe, %i.ach
  %i.acj = fadd fast <4 x float> %i.aci, %.724312636.us2654.us.us.us.i.us
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us, %bb.ai, %.lr.ph.split.us2649.us.us.us.i.us
  %.82432.us2658.us.us.us.i.us = phi nsz <4 x float> [ %.724312636.us2654.us.us.us.i.us, %.lr.ph.split.us2649.us.us.us.i.us ], [ %i.acj, %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us ], [ %.724312636.us2654.us.us.us.i.us, %bb.ai ] ; 2 uses
  %.82422.us2659.us.us.us.i.us = phi nsz <4 x float> [ %.724212637.us2653.us.us.us.i.us, %.lr.ph.split.us2649.us.us.us.i.us ], [ %i.acb, %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us ], [ %.724212637.us2653.us.us.us.i.us, %bb.ai ] ; 2 uses
  %.82407.us2660.us.us.us.i.us = phi nsz <4 x float> [ %.724062638.us2652.us.us.us.i.us, %.lr.ph.split.us2649.us.us.us.i.us ], [ %i.abt, %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us ], [ %.724062638.us2652.us.us.us.i.us, %bb.ai ] ; 2 uses
  %.92389.us2661.us.us.us.i.us = phi nsz <4 x float> [ %.823882639.us2651.us.us.us.i.us, %.lr.ph.split.us2649.us.us.us.i.us ], [ %i.abl, %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us ], [ %.823882639.us2651.us.us.us.i.us, %bb.ai ] ; 2 uses
  %indvars.iv.next3350.i.us = add nuw nsw i64 %indvars.iv3349.i.us, 1 ; 2 uses
  %exitcond3353.not.i.us = icmp eq i64 %indvars.iv.next3350.i.us, %i.vx
  br i1 %exitcond3353.not.i.us, label %..loopexit2575_crit_edge.us.us.us.i.us87, label %.lr.ph.split.us2649.us.us.us.i.us, !llvm.loop !540

..loopexit2575_crit_edge.us.us.us.i.us87:         ; preds = %bb.aj, %bb.ah, %.preheader2580.us.us.i.split.us77
  %.92433.us.us.us.i.us88 = phi nsz <4 x float> [ %.624302671.us.us.us.i.us82, %.preheader2580.us.us.i.split.us77 ], [ %.624302671.us.us.us.i.us82, %bb.ah ], [ %.82432.us2658.us.us.us.i.us, %bb.aj ] ; 2 uses
  %.92423.us.us.us.i.us89 = phi nsz <4 x float> [ %.624202672.us.us.us.i.us81, %.preheader2580.us.us.i.split.us77 ], [ %.624202672.us.us.us.i.us81, %bb.ah ], [ %.82422.us2659.us.us.us.i.us, %bb.aj ] ; 2 uses
  %.92408.us.us.us.i.us90 = phi nsz <4 x float> [ %.624052673.us.us.us.i.us80, %.preheader2580.us.us.i.split.us77 ], [ %.624052673.us.us.us.i.us80, %bb.ah ], [ %.82407.us2660.us.us.us.i.us, %bb.aj ] ; 2 uses
  %.102390.us.us.us.i.us91 = phi nsz <4 x float> [ %.72674.us.us.us.i.us79, %.preheader2580.us.us.i.split.us77 ], [ %.72674.us.us.us.i.us79, %bb.ah ], [ %.92389.us2661.us.us.us.i.us, %bb.aj ] ; 2 uses
  %indvars.iv.next3360.i.us92 = add nuw nsw i64 %indvars.iv3359.i.us78, 1 ; 2 uses
  %exitcond3363.not.i.us93 = icmp eq i64 %indvars.iv.next3360.i.us92, %wide.trip.count3342.i
  br i1 %exitcond3363.not.i.us93, label %._crit_edge.split.us.us2717.us.i, label %.preheader2580.us.us.i.split.us77, !llvm.loop !541

._crit_edge.split.us.us2717.us.i:                 ; preds = %..loopexit2575_crit_edge.us.us.us.i.us87, %..loopexit2575_crit_edge.us.us.us.i.us, %.preheader2580.us.us.i
  %.us-phi = phi <4 x float> [ %.92433.us.us.us.i.us, %..loopexit2575_crit_edge.us.us.us.i.us ], [ %.524292697.us.us.i, %.preheader2580.us.us.i ], [ %.92433.us.us.us.i.us88, %..loopexit2575_crit_edge.us.us.us.i.us87 ] ; 2 uses
  %.us-phi74 = phi <4 x float> [ %.92423.us.us.us.i.us, %..loopexit2575_crit_edge.us.us.us.i.us ], [ %.524192698.us.us.i, %.preheader2580.us.us.i ], [ %.92423.us.us.us.i.us89, %..loopexit2575_crit_edge.us.us.us.i.us87 ] ; 2 uses
  %.us-phi75 = phi <4 x float> [ %.92408.us.us.us.i.us, %..loopexit2575_crit_edge.us.us.us.i.us ], [ %.524042699.us.us.i, %.preheader2580.us.us.i ], [ %.92408.us.us.us.i.us90, %..loopexit2575_crit_edge.us.us.us.i.us87 ] ; 2 uses
  %.us-phi76 = phi <4 x float> [ %.102390.us.us.us.i.us, %..loopexit2575_crit_edge.us.us.us.i.us ], [ %.623872700.us.us.i, %.preheader2580.us.us.i ], [ %.102390.us.us.us.i.us91, %..loopexit2575_crit_edge.us.us.us.i.us87 ] ; 2 uses
  %i.ack = getelementptr inbounds [2 x i8], ptr %.17522702.us.us.i, i64 %i.it ; 2 uses
  %indvars.iv.next3365.i = add nuw nsw i64 %indvars.iv3364.i, 4 ; 3 uses
  %i.acl = or disjoint i64 %indvars.iv.next3365.i, 3 ; 2 uses
  %i.acm = trunc nuw i64 %i.acl to i32
  %i.acn = icmp sgt i32 %i.he, %i.acm
  br i1 %i.acn, label %.preheader2580.us.us.i, label %.preheader2583.loopexit.i, !llvm.loop !544

.preheader2583.loopexit.i:                        ; preds = %._crit_edge.split.us.us2717.us.i
  %i.aco = trunc nuw i64 %indvars.iv.next3365.i to i32
  br label %.preheader2583.i

.preheader2583.i:                                 ; preds = %.preheader2583.loopexit.i, %.preheader2580.us.preheader.i, %.preheader2580.preheader.i, %.preheader2584.i
  %.52429.lcssa.i = phi <4 x float> [ %.02424.lcssa.i, %.preheader2584.i ], [ %.us-phi, %.preheader2583.loopexit.i ], [ %.02424.lcssa.i, %.preheader2580.us.preheader.i ], [ %.02424.lcssa.i, %.preheader2580.preheader.i ]
  %.52419.lcssa.i = phi <4 x float> [ %.02414.lcssa.i, %.preheader2584.i ], [ %.us-phi74, %.preheader2583.loopexit.i ], [ %.02414.lcssa.i, %.preheader2580.us.preheader.i ], [ %.02414.lcssa.i, %.preheader2580.preheader.i ]
  %.52404.lcssa.i = phi <4 x float> [ %.02399.lcssa.i, %.preheader2584.i ], [ %.us-phi75, %.preheader2583.loopexit.i ], [ %.02399.lcssa.i, %.preheader2580.us.preheader.i ], [ %.02399.lcssa.i, %.preheader2580.preheader.i ] ; 4 uses
  %.62387.lcssa.i = phi <4 x float> [ %.12383.lcssa.i, %.preheader2584.i ], [ %.us-phi76, %.preheader2583.loopexit.i ], [ %.12383.lcssa.i, %.preheader2580.us.preheader.i ], [ %.12383.lcssa.i, %.preheader2580.preheader.i ] ; 4 uses
  %.1757.lcssa.i = phi i32 [ %.0756.lcssa.i, %.preheader2584.i ], [ %i.aco, %.preheader2583.loopexit.i ], [ %i.vw, %.preheader2580.us.preheader.i ], [ %i.vn, %.preheader2580.preheader.i ] ; 7 uses
  %.1752.lcssa.i = phi ptr [ %.0751.lcssa.i, %.preheader2584.i ], [ %i.ack, %.preheader2583.loopexit.i ], [ %scevgep3348.i, %.preheader2580.us.preheader.i ], [ %scevgep3347.i, %.preheader2580.preheader.i ] ; 4 uses
  %i.acp = or disjoint i32 %.1757.lcssa.i, 1      ; 2 uses
  %i.acq = icmp slt i32 %i.acp, %i.he
  br i1 %i.acq, label %.preheader2579.lr.ph.i, label %.preheader2582.i

.preheader2579.lr.ph.i:                           ; preds = %.preheader2583.i
  %i.acr = load i32, ptr %i.d, align 4
end_hunk_0
begin_hunk_1_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %.812941407.us = phi <8 x float> [ %.712931418.us, %.preheader1329.us ], [ %.121298.us, %.loopexit1324.us ] ; 6 uses
  %i.ov = mul nsw i32 %i.on, %.03251411.us
  %.reass1417.us = add i32 %i.ov, %invariant.op1416.us ; 3 uses
  %i.ow = icmp slt i32 %.reass1417.us, 0
  br i1 %i.ow, label %.loopexit1324.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ox = load i32, ptr %11, align 4, !tbaa !61   ; 2 uses
  %i.oy = srem i32 %.reass1417.us, %i.ox
  %i.oz = sdiv i32 %.reass1417.us, %i.ox          ; 2 uses
  %.not378.us = icmp eq i32 %i.oy, 0
  %.not379.us = icmp slt i32 %i.oz, %i.ae
  %or.cond1686 = select i1 %.not378.us, i1 %.not379.us, i1 false
  br i1 %or.cond1686, label %.preheader1323.us, label %.loopexit1324.us

.preheader1323.us:                                ; preds = %bb.m
  %i.pa = load i32, ptr %12, align 4, !tbaa !61   ; 4 uses
  %i.pb = icmp sgt i32 %i.pa, 0
  br i1 %i.pb, label %.lr.ph.us1430, label %.loopexit1324.us

.lr.ph.us1430:                                    ; preds = %.preheader1323.us
  %i.pc = load i32, ptr %13, align 4, !tbaa !61   ; 2 uses
  %i.pd = load i32, ptr %14, align 4, !tbaa !61
  %invariant.op.us1431 = sub i32 %.neg1316, %i.pd ; 2 uses
  %i.pe = mul nuw nsw i32 %i.pa, %.03251411.us    ; 2 uses
  %i.pf = sext i32 %i.oz to i64                   ; 2 uses
  switch i32 %.fr, label %.loopexit1324.us [
    i32 4, label %.lr.ph.split.us.us.preheader
    i32 1, label %.lr.ph.split.us1386.us.preheader
  ]

.lr.ph.split.us1386.us.preheader:                 ; preds = %.lr.ph.us1430
  %wide.trip.count1530 = zext nneg i32 %i.pa to i64
  br label %.lr.ph.split.us1386.us

.lr.ph.split.us.us.preheader:                     ; preds = %.lr.ph.us1430
  %wide.trip.count1535 = zext nneg i32 %i.pa to i64
  br label %.lr.ph.split.us.us

.lr.ph.split.us1386.us:                           ; preds = %.lr.ph.split.us1386.us.preheader, %bb.o
  %indvars.iv1527 = phi i64 [ 0, %.lr.ph.split.us1386.us.preheader ], [ %indvars.iv.next1528, %bb.o ] ; 3 uses
  %.101375.us1388.us = phi <8 x float> [ %.91410.us, %.lr.ph.split.us1386.us.preheader ], [ %.12.us1398.us, %bb.o ] ; 3 uses
  %.912641374.us1389.us = phi <8 x float> [ %.812631409.us, %.lr.ph.split.us1386.us.preheader ], [ %.111266.us1397.us, %bb.o ] ; 3 uses
  %.912821373.us1390.us = phi <8 x float> [ %.812811408.us, %.lr.ph.split.us1386.us.preheader ], [ %.111284.us1396.us, %bb.o ] ; 3 uses
  %.912951372.us1391.us = phi <8 x float> [ %.812941407.us, %.lr.ph.split.us1386.us.preheader ], [ %.111297.us1395.us, %bb.o ] ; 3 uses
  %i.pg = trunc i64 %indvars.iv1527 to i32
  %i.ph = mul i32 %i.pc, %i.pg
  %.reass.us1392.us = add i32 %i.ph, %invariant.op.us1431 ; 3 uses
  %i.pi = icmp slt i32 %.reass.us1392.us, 0
  br i1 %i.pi, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.us1386.us
  %i.pj = load i32, ptr %15, align 4, !tbaa !61   ; 2 uses
  %i.pk = srem i32 %.reass.us1392.us, %i.pj
  %i.pl = sdiv i32 %.reass.us1392.us, %i.pj       ; 2 uses
  %.not380.us1393.us = icmp eq i32 %i.pk, 0
  %.not381.us1394.us = icmp slt i32 %i.pl, %i.ad
  %or.cond1687 = select i1 %.not380.us1393.us, i1 %.not381.us1394.us, i1 false
  br i1 %or.cond1687, label %_ZN4ncnn3MatD2Ev.exit391.us.us, label %bb.o

_ZN4ncnn3MatD2Ev.exit391.us.us:                   ; preds = %bb.n
  %i.pm = trunc i64 %indvars.iv1527 to i32
  %i.pn = add i32 %i.pe, %i.pm
  %i.po = shl nsw i32 %i.pn, 5
  %i.pp = zext nneg i32 %i.po to i64
  %i.pq = getelementptr inbounds nuw [2 x i8], ptr %.13301422.us, i64 %i.pp ; 4 uses
  %i.pr = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !759
  %i.ps = load ptr, ptr %4, align 8, !tbaa !20, !noalias !759 ; 4 uses
  %i.pt = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !759 ; 4 uses
  %i.pu = mul i64 %i.pt, %indvars.iv1538
  %i.pv = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !759 ; 5 uses
  %i.pw = mul i64 %i.pu, %i.pv
  %i.px = getelementptr inbounds nuw i8, ptr %i.ps, i64 %i.pw
  %i.py = sext i32 %i.pr to i64
  %i.pz = mul nsw i64 %i.py, %i.pf
  %i.qa = mul i64 %i.pz, %i.pv                    ; 4 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.px, i64 %i.qa
  %i.qc = sext i32 %i.pl to i64                   ; 4 uses
  %i.qd = getelementptr inbounds [2 x i8], ptr %i.qb, i64 %i.qc
  %i.qe = mul i64 %i.pt, %i.os
  %i.qf = mul i64 %i.qe, %i.pv
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ps, i64 %i.qf
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 %i.qa
  %i.qi = getelementptr inbounds [2 x i8], ptr %i.qh, i64 %i.qc
  %i.qj = mul i64 %i.pt, %i.ot
  %i.qk = mul i64 %i.qj, %i.pv
  %i.ql = getelementptr inbounds nuw i8, ptr %i.ps, i64 %i.qk
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 %i.qa
  %i.qn = getelementptr inbounds [2 x i8], ptr %i.qm, i64 %i.qc
  %i.qo = mul i64 %i.pt, %i.or
  %i.qp = mul i64 %i.qo, %i.pv
  %i.qq = getelementptr inbounds nuw i8, ptr %i.ps, i64 %i.qp
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 %i.qa
  %i.qs = getelementptr inbounds [2 x i8], ptr %i.qr, i64 %i.qc
  %i.qt = load i16, ptr %i.qd, align 2, !tbaa !89
  %i.qu = zext i16 %i.qt to i32
  %i.qv = shl nuw i32 %i.qu, 16
  %i.qw = insertelement <8 x i32> poison, i32 %i.qv, i64 0
  %i.qx = bitcast <8 x i32> %i.qw to <8 x float>
  %i.qy = shufflevector <8 x float> %i.qx, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qz = load i16, ptr %i.qi, align 2, !tbaa !89
  %i.ra = zext i16 %i.qz to i32
  %i.rb = shl nuw i32 %i.ra, 16
  %i.rc = insertelement <8 x i32> poison, i32 %i.rb, i64 0
  %i.rd = bitcast <8 x i32> %i.rc to <8 x float>
  %i.re = shufflevector <8 x float> %i.rd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.rf = load i16, ptr %i.qn, align 2, !tbaa !89
  %i.rg = zext i16 %i.rf to i32
  %i.rh = shl nuw i32 %i.rg, 16
  %i.ri = insertelement <8 x i32> poison, i32 %i.rh, i64 0
  %i.rj = bitcast <8 x i32> %i.ri to <8 x float>
  %i.rk = shufflevector <8 x float> %i.rj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.rl = load i16, ptr %i.qs, align 2, !tbaa !89
  %i.rm = zext i16 %i.rl to i32
  %i.rn = shl nuw i32 %i.rm, 16
  %i.ro = insertelement <8 x i32> poison, i32 %i.rn, i64 0
  %i.rp = bitcast <8 x i32> %i.ro to <8 x float>
  %i.rq = shufflevector <8 x float> %i.rp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.rr = load <8 x i16>, ptr %i.pq, align 16, !tbaa !82 ; 2 uses
  %i.rs = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rt = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.rr, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ru = shufflevector <8 x i16> %i.rs, <8 x i16> %i.rt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rv = bitcast <16 x i16> %i.ru to <8 x float>
  %i.rw = fmul fast <8 x float> %i.qy, %i.rv
  %i.rx = fadd fast <8 x float> %i.rw, %.101375.us1388.us
  %i.ry = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %i.rz = load <8 x i16>, ptr %i.ry, align 16, !tbaa !82 ; 2 uses
  %i.sa = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sb = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.rz, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.sc = shufflevector <8 x i16> %i.sa, <8 x i16> %i.sb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.sd = bitcast <16 x i16> %i.sc to <8 x float>
  %i.se = fmul fast <8 x float> %i.re, %i.sd
  %i.sf = fadd fast <8 x float> %i.se, %.912641374.us1389.us
  %i.sg = getelementptr inbounds nuw i8, ptr %i.pq, i64 32
  %i.sh = load <8 x i16>, ptr %i.sg, align 16, !tbaa !82 ; 2 uses
  %i.si = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sj = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.sh, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.sk = shufflevector <8 x i16> %i.si, <8 x i16> %i.sj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.sl = bitcast <16 x i16> %i.sk to <8 x float>
  %i.sm = fmul fast <8 x float> %i.rk, %i.sl
  %i.sn = fadd fast <8 x float> %i.sm, %.912821373.us1390.us
  %i.so = getelementptr inbounds nuw i8, ptr %i.pq, i64 48
  %i.sp = load <8 x i16>, ptr %i.so, align 16, !tbaa !82 ; 2 uses
  %i.sq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sr = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.sp, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ss = shufflevector <8 x i16> %i.sq, <8 x i16> %i.sr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.st = bitcast <16 x i16> %i.ss to <8 x float>
  %i.su = fmul fast <8 x float> %i.rq, %i.st
  %i.sv = fadd fast <8 x float> %i.su, %.912951372.us1391.us
  br label %bb.o

bb.o:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit391.us.us, %bb.n, %.lr.ph.split.us1386.us
  %.111297.us1395.us = phi nsz <8 x float> [ %.912951372.us1391.us, %.lr.ph.split.us1386.us ], [ %.912951372.us1391.us, %bb.n ], [ %i.sv, %_ZN4ncnn3MatD2Ev.exit391.us.us ] ; 2 uses
  %.111284.us1396.us = phi nsz <8 x float> [ %.912821373.us1390.us, %.lr.ph.split.us1386.us ], [ %.912821373.us1390.us, %bb.n ], [ %i.sn, %_ZN4ncnn3MatD2Ev.exit391.us.us ] ; 2 uses
  %.111266.us1397.us = phi nsz <8 x float> [ %.912641374.us1389.us, %.lr.ph.split.us1386.us ], [ %.912641374.us1389.us, %bb.n ], [ %i.sf, %_ZN4ncnn3MatD2Ev.exit391.us.us ] ; 2 uses
  %.12.us1398.us = phi nsz <8 x float> [ %.101375.us1388.us, %.lr.ph.split.us1386.us ], [ %.101375.us1388.us, %bb.n ], [ %i.rx, %_ZN4ncnn3MatD2Ev.exit391.us.us ] ; 2 uses
  %indvars.iv.next1528 = add nuw nsw i64 %indvars.iv1527, 1 ; 2 uses
  %exitcond1531.not = icmp eq i64 %indvars.iv.next1528, %wide.trip.count1530
  br i1 %exitcond1531.not, label %.loopexit1324.us, label %.lr.ph.split.us1386.us, !llvm.loop !738

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us.preheader, %bb.r
  %indvars.iv1532 = phi i64 [ 0, %.lr.ph.split.us.us.preheader ], [ %indvars.iv.next1533, %bb.r ] ; 3 uses
  %.101375.us.us = phi <8 x float> [ %.91410.us, %.lr.ph.split.us.us.preheader ], [ %.12.us.us, %bb.r ] ; 3 uses
  %.912641374.us.us = phi <8 x float> [ %.812631409.us, %.lr.ph.split.us.us.preheader ], [ %.111266.us.us, %bb.r ] ; 3 uses
  %.912821373.us.us = phi <8 x float> [ %.812811408.us, %.lr.ph.split.us.us.preheader ], [ %.111284.us.us, %bb.r ] ; 3 uses
  %.912951372.us.us = phi <8 x float> [ %.812941407.us, %.lr.ph.split.us.us.preheader ], [ %.111297.us.us, %bb.r ] ; 3 uses
  %i.sw = trunc i64 %indvars.iv1532 to i32
  %i.sx = mul i32 %i.pc, %i.sw
  %.reass.us1380.us = add i32 %i.sx, %invariant.op.us1431 ; 3 uses
  %i.sy = icmp slt i32 %.reass.us1380.us, 0
  br i1 %i.sy, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split.us.us
  %i.sz = load i32, ptr %15, align 4, !tbaa !61   ; 2 uses
  %i.ta = srem i32 %.reass.us1380.us, %i.sz
  %i.tb = sdiv i32 %.reass.us1380.us, %i.sz       ; 2 uses
  %.not380.us.us = icmp eq i32 %i.ta, 0
  %.not381.us.us = icmp slt i32 %i.tb, %i.ad
  %or.cond1688 = select i1 %.not380.us.us, i1 %.not381.us.us, i1 false
  br i1 %or.cond1688, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.tc = trunc i64 %indvars.iv1532 to i32
  %i.td = add i32 %i.pe, %i.tc
  %i.te = shl nsw i32 %i.td, 5
  %i.tf = zext nneg i32 %i.te to i64
  %i.tg = getelementptr inbounds nuw [2 x i8], ptr %.13301422.us, i64 %i.tf ; 4 uses
  %i.th = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !760
  %i.ti = load ptr, ptr %4, align 8, !tbaa !20, !noalias !760
  %i.tj = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !760
  %i.tk = mul i64 %i.tj, %i.ou
  %i.tl = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !760 ; 2 uses
  %i.tm = mul i64 %i.tk, %i.tl
  %i.tn = getelementptr inbounds nuw i8, ptr %i.ti, i64 %i.tm
  %i.to = sext i32 %i.th to i64
  %i.tp = mul nsw i64 %i.to, %i.pf
  %i.tq = mul i64 %i.tp, %i.tl
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tn, i64 %i.tq
  %i.ts = shl nsw i32 %i.tb, 2
  %i.tt = sext i32 %i.ts to i64
  %i.tu = getelementptr inbounds [2 x i8], ptr %i.tr, i64 %i.tt ; 3 uses
  %20 = load i16, ptr %i.tu, align 2, !tbaa !89
  %21 = zext i16 %20 to i32
  %22 = shl nuw i32 %21, 16
  %23 = insertelement <8 x i32> poison, i32 %22, i64 0
  %24 = bitcast <8 x i32> %23 to <8 x float>
  %25 = shufflevector <8 x float> %24, <8 x float> poison, <8 x i32> zeroinitializer
  %26 = getelementptr inbounds nuw i8, ptr %i.tu, i64 2
  %27 = load i16, ptr %26, align 2, !tbaa !89
  %28 = zext i16 %27 to i32
  %29 = shl nuw i32 %28, 16
  %30 = insertelement <8 x i32> poison, i32 %29, i64 0
  %31 = bitcast <8 x i32> %30 to <8 x float>
  %i.tv = shufflevector <8 x float> %31, <8 x float> poison, <8 x i32> zeroinitializer
  %32 = getelementptr inbounds nuw i8, ptr %i.tu, i64 4
  %33 = load <2 x i16>, ptr %32, align 2, !tbaa !89
  %34 = zext <2 x i16> %33 to <2 x i32>
  %35 = shl nuw <2 x i32> %34, splat (i32 16)     ; 2 uses
  %36 = bitcast <2 x i32> %35 to <2 x float>
  %37 = shufflevector <2 x float> %36, <2 x float> poison, <8 x i32> zeroinitializer
  %38 = bitcast <2 x i32> %35 to <2 x float>
  %39 = shufflevector <2 x float> %38, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.tw = load <8 x i16>, ptr %i.tg, align 16, !tbaa !82 ; 2 uses
  %i.tx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.tw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ty = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.tw, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.tz = shufflevector <8 x i16> %i.tx, <8 x i16> %i.ty, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ua = bitcast <16 x i16> %i.tz to <8 x float>
  %i.ub = fmul fast <8 x float> %25, %i.ua
  %i.uc = fadd fast <8 x float> %i.ub, %.101375.us.us
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tg, i64 16
  %i.ue = load <8 x i16>, ptr %i.ud, align 16, !tbaa !82 ; 2 uses
  %i.uf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ue, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ug = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ue, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.uh = shufflevector <8 x i16> %i.uf, <8 x i16> %i.ug, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ui = bitcast <16 x i16> %i.uh to <8 x float>
  %i.uj = fmul fast <8 x float> %i.tv, %i.ui
  %i.uk = fadd fast <8 x float> %i.uj, %.912641374.us.us
  %i.ul = getelementptr inbounds nuw i8, ptr %i.tg, i64 32
  %i.um = load <8 x i16>, ptr %i.ul, align 16, !tbaa !82 ; 2 uses
  %i.un = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.um, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.uo = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.um, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.up = shufflevector <8 x i16> %i.un, <8 x i16> %i.uo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.uq = bitcast <16 x i16> %i.up to <8 x float>
  %i.ur = fmul fast <8 x float> %37, %i.uq
  %i.us = fadd fast <8 x float> %i.ur, %.912821373.us.us
  %i.ut = getelementptr inbounds nuw i8, ptr %i.tg, i64 48
  %i.uu = load <8 x i16>, ptr %i.ut, align 16, !tbaa !82 ; 2 uses
  %i.uv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.uu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.uw = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.uu, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ux = shufflevector <8 x i16> %i.uv, <8 x i16> %i.uw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.uy = bitcast <16 x i16> %i.ux to <8 x float>
  %i.uz = fmul fast <8 x float> %39, %i.uy
  %i.va = fadd fast <8 x float> %i.uz, %.912951372.us.us
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %.lr.ph.split.us.us
  %.111297.us.us = phi nsz <8 x float> [ %.912951372.us.us, %.lr.ph.split.us.us ], [ %i.va, %bb.q ], [ %.912951372.us.us, %bb.p ] ; 2 uses
  %.111284.us.us = phi nsz <8 x float> [ %.912821373.us.us, %.lr.ph.split.us.us ], [ %i.us, %bb.q ], [ %.912821373.us.us, %bb.p ] ; 2 uses
  %.111266.us.us = phi nsz <8 x float> [ %.912641374.us.us, %.lr.ph.split.us.us ], [ %i.uk, %bb.q ], [ %.912641374.us.us, %bb.p ] ; 2 uses
  %.12.us.us = phi nsz <8 x float> [ %.101375.us.us, %.lr.ph.split.us.us ], [ %i.uc, %bb.q ], [ %.101375.us.us, %bb.p ] ; 2 uses
  %indvars.iv.next1533 = add nuw nsw i64 %indvars.iv1532, 1 ; 2 uses
  %exitcond1536.not = icmp eq i64 %indvars.iv.next1533, %wide.trip.count1535
  br i1 %exitcond1536.not, label %.loopexit1324.us, label %.lr.ph.split.us.us, !llvm.loop !738

.loopexit1324.us:                                 ; preds = %bb.o, %bb.r, %.lr.ph.us1430, %.preheader1323.us, %bb.m, %bb.l
  %.121298.us = phi nsz <8 x float> [ %.812941407.us, %bb.l ], [ %.812941407.us, %bb.m ], [ %.111297.us.us, %bb.r ], [ %.812941407.us, %.preheader1323.us ], [ %.812941407.us, %.lr.ph.us1430 ], [ %.111297.us1395.us, %bb.o ] ; 3 uses
  %.121285.us = phi nsz <8 x float> [ %.812811408.us, %bb.l ], [ %.812811408.us, %bb.m ], [ %.111284.us.us, %bb.r ], [ %.812811408.us, %.preheader1323.us ], [ %.812811408.us, %.lr.ph.us1430 ], [ %.111284.us1396.us, %bb.o ] ; 3 uses
  %.121267.us = phi nsz <8 x float> [ %.812631409.us, %bb.l ], [ %.812631409.us, %bb.m ], [ %.111266.us.us, %bb.r ], [ %.812631409.us, %.preheader1323.us ], [ %.812631409.us, %.lr.ph.us1430 ], [ %.111266.us1397.us, %bb.o ] ; 3 uses
  %.13.us = phi nsz <8 x float> [ %.91410.us, %bb.l ], [ %.91410.us, %bb.m ], [ %.12.us.us, %bb.r ], [ %.91410.us, %.preheader1323.us ], [ %.91410.us, %.lr.ph.us1430 ], [ %.12.us1398.us, %bb.o ] ; 3 uses
  %i.vb = add nuw nsw i32 %.03251411.us, 1        ; 2 uses
  %exitcond1537.not = icmp eq i32 %i.vb, %i.oa
  br i1 %exitcond1537.not, label %._crit_edge.us1439, label %bb.l, !llvm.loop !741

._crit_edge.us1439:                               ; preds = %.loopexit1324.us
  %i.vc = getelementptr inbounds [2 x i8], ptr %.13301422.us, i64 %i.oe ; 2 uses
  %indvars.iv.next1539 = add nuw nsw i64 %indvars.iv1538, 4 ; 3 uses
  %i.vd = or disjoint i64 %indvars.iv.next1539, 3 ; 2 uses
  %i.ve = trunc nuw i64 %i.vd to i32
  %i.vf = icmp sgt i32 %i.ac, %i.ve
  br i1 %i.vf, label %.preheader1329.us, label %.preheader1332.loopexit, !llvm.loop !742

.preheader1332.loopexit:                          ; preds = %._crit_edge.us1439
  %i.vg = trunc nuw i64 %indvars.iv.next1539 to i32
  br label %.preheader1332

.preheader1332:                                   ; preds = %.preheader1329.preheader, %.preheader1332.loopexit, %.preheader1333
  %.71293.lcssa = phi <8 x float> [ %.01286.lcssa, %.preheader1333 ], [ %.121298.us, %.preheader1332.loopexit ], [ %.01286.lcssa, %.preheader1329.preheader ]
  %.71280.lcssa = phi <8 x float> [ %.01273.lcssa, %.preheader1333 ], [ %.121285.us, %.preheader1332.loopexit ], [ %.01273.lcssa, %.preheader1329.preheader ]
  %.71262.lcssa = phi <8 x float> [ %.01255.lcssa, %.preheader1333 ], [ %.121267.us, %.preheader1332.loopexit ], [ %.01255.lcssa, %.preheader1329.preheader ] ; 3 uses
  %.8.lcssa = phi <8 x float> [ %.11251.lcssa, %.preheader1333 ], [ %.13.us, %.preheader1332.loopexit ], [ %.11251.lcssa, %.preheader1329.preheader ] ; 3 uses
  %.1330.lcssa = phi ptr [ %.0329.lcssa, %.preheader1333 ], [ %i.vc, %.preheader1332.loopexit ], [ %scevgep1526, %.preheader1329.preheader ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0328.lcssa, %.preheader1333 ], [ %i.vg, %.preheader1332.loopexit ], [ %i.om, %.preheader1329.preheader ] ; 5 uses
  %i.vh = or disjoint i32 %.1.lcssa, 1            ; 2 uses
  %i.vi = icmp slt i32 %i.vh, %i.ac
  br i1 %i.vi, label %.preheader1328.lr.ph, label %.preheader1331

.preheader1328.lr.ph:                             ; preds = %.preheader1332
  %i.vj = load i32, ptr %8, align 4, !tbaa !61    ; 2 uses
  %i.vk = icmp sgt i32 %i.vj, 0
  %.neg1312 = add nuw nsw i32 %.03331496, 1
  %i.vl = load i32, ptr %16, align 4, !tbaa !61
  %i.vm = shl i32 %i.vl, 4
  %i.vn = sext i32 %i.vm to i64                   ; 2 uses
  br i1 %i.vk, label %.preheader1328.lr.ph.split.us, label %.preheader1328.preheader

.preheader1328.preheader:                         ; preds = %.preheader1328.lr.ph
  %i.vo = sub i32 %i.bj, %.1.lcssa                ; 2 uses
  %i.vp = and i32 %i.vo, -2
  %i.vq = zext i32 %i.vp to i64
  %i.vr = add nuw nsw i64 %i.vq, 2
  %i.vs = mul nsw i64 %i.vr, %i.vn
  %scevgep1541 = getelementptr i8, ptr %.1330.lcssa, i64 %i.vs
  %i.vt = add i32 %.1.lcssa, 2
  %i.vu = and i32 %i.vo, -2
  %i.vv = add i32 %i.vt, %i.vu
  br label %.preheader1331

.preheader1328.lr.ph.split.us:                    ; preds = %.preheader1328.lr.ph
  %i.vw = load i32, ptr %9, align 4, !tbaa !61
  %i.vx = load i32, ptr %10, align 4, !tbaa !61
  %invariant.op1457.us = sub i32 %.neg1318, %i.vx
  %i.vy = zext i32 %.1.lcssa to i64
  %i.vz = zext nneg i32 %i.vh to i64
  br label %.preheader1328.us

.preheader1328.us:                                ; preds = %._crit_edge.us1471, %.preheader1328.lr.ph.split.us
  %indvars.iv1548 = phi i64 [ %indvars.iv.next1549, %._crit_edge.us1471 ], [ %i.vy, %.preheader1328.lr.ph.split.us ] ; 2 uses
  %i.wa = phi i64 [ %i.ys, %._crit_edge.us1471 ], [ %i.vz, %.preheader1328.lr.ph.split.us ]
  %.23311461.us = phi ptr [ %i.yr, %._crit_edge.us1471 ], [ %.1330.lcssa, %.preheader1328.lr.ph.split.us ] ; 2 uses
  %.141460.us = phi <8 x float> [ %.18.us, %._crit_edge.us1471 ], [ %.8.lcssa, %.preheader1328.lr.ph.split.us ]
  %.1312681459.us = phi <8 x float> [ %.171272.us, %._crit_edge.us1471 ], [ %.71262.lcssa, %.preheader1328.lr.ph.split.us ]
  br label %bb.s

bb.s:                                             ; preds = %.preheader1328.us, %.loopexit1322.us
  %.03231453.us = phi i32 [ 0, %.preheader1328.us ], [ %i.ym, %.loopexit1322.us ] ; 3 uses
  %.151452.us = phi <8 x float> [ %.141460.us, %.preheader1328.us ], [ %.18.us, %.loopexit1322.us ] ; 4 uses
  %.1412691451.us = phi <8 x float> [ %.1312681459.us, %.preheader1328.us ], [ %.171272.us, %.loopexit1322.us ] ; 4 uses
  %i.wb = mul nsw i32 %i.vw, %.03231453.us
  %.reass1458.us = add i32 %i.wb, %invariant.op1457.us ; 3 uses
  %i.wc = icmp slt i32 %.reass1458.us, 0
  br i1 %i.wc, label %.loopexit1322.us, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.wd = load i32, ptr %11, align 4, !tbaa !61   ; 2 uses
  %i.we = srem i32 %.reass1458.us, %i.wd
  %i.wf = sdiv i32 %.reass1458.us, %i.wd          ; 2 uses
  %.not374.us = icmp eq i32 %i.we, 0
  %.not375.us = icmp slt i32 %i.wf, %i.ae
  %or.cond1689 = select i1 %.not374.us, i1 %.not375.us, i1 false
  br i1 %or.cond1689, label %.preheader1321.us, label %.loopexit1322.us

.preheader1321.us:                                ; preds = %bb.t
  %i.wg = load i32, ptr %12, align 4, !tbaa !61   ; 3 uses
  %i.wh = icmp sgt i32 %i.wg, 0
  br i1 %i.wh, label %.lr.ph.us1468, label %.loopexit1322.us

bb.u:                                             ; preds = %.lr.ph.us1468, %bb.w
  %indvars.iv1542 = phi i64 [ 0, %.lr.ph.us1468 ], [ %indvars.iv.next1543, %bb.w ] ; 3 uses
  %.161448.us = phi <8 x float> [ %.151452.us, %.lr.ph.us1468 ], [ %.17.us, %bb.w ] ; 3 uses
  %.1512701447.us = phi <8 x float> [ %.1412691451.us, %.lr.ph.us1468 ], [ %.161271.us, %bb.w ] ; 3 uses
  %i.wi = trunc i64 %indvars.iv1542 to i32
  %i.wj = mul i32 %i.yn, %i.wi
  %.reass.us1467 = add i32 %i.wj, %invariant.op.us1469 ; 3 uses
  %i.wk = icmp slt i32 %.reass.us1467, 0
  br i1 %i.wk, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.wl = load i32, ptr %15, align 4, !tbaa !61   ; 2 uses
  %i.wm = srem i32 %.reass.us1467, %i.wl
  %i.wn = sdiv i32 %.reass.us1467, %i.wl          ; 2 uses
  %.not376.us = icmp eq i32 %i.wm, 0
  %.not377.us = icmp slt i32 %i.wn, %i.ad
  %or.cond1690 = select i1 %.not376.us, i1 %.not377.us, i1 false
  br i1 %or.cond1690, label %_ZN4ncnn3MatD2Ev.exit387.us, label %bb.w

_ZN4ncnn3MatD2Ev.exit387.us:                      ; preds = %bb.v
  %i.wo = trunc i64 %indvars.iv1542 to i32
  %i.wp = add i32 %i.yp, %i.wo
  %i.wq = shl nsw i32 %i.wp, 4
  %i.wr = zext nneg i32 %i.wq to i64
  %i.ws = getelementptr inbounds nuw [2 x i8], ptr %.23311461.us, i64 %i.wr ; 2 uses
  %i.wt = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !761
  %i.wu = load ptr, ptr %4, align 8, !tbaa !20, !noalias !761 ; 2 uses
  %i.wv = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !761 ; 2 uses
  %i.ww = mul i64 %i.wv, %indvars.iv1548
  %i.wx = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !761 ; 3 uses
  %i.wy = mul i64 %i.ww, %i.wx
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wu, i64 %i.wy
  %i.xa = sext i32 %i.wt to i64
  %i.xb = mul nsw i64 %i.xa, %i.yq
  %i.xc = mul i64 %i.xb, %i.wx                    ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wz, i64 %i.xc
  %i.xe = mul i64 %i.wv, %i.wa
  %i.xf = mul i64 %i.xe, %i.wx
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wu, i64 %i.xf
  %i.xh = sext i32 %i.wn to i64                   ; 2 uses
  %i.xi = getelementptr inbounds [2 x i8], ptr %i.xd, i64 %i.xh
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xg, i64 %i.xc
  %i.xk = load i16, ptr %i.xi, align 2, !tbaa !89
  %i.xl = zext i16 %i.xk to i32
  %i.xm = shl nuw i32 %i.xl, 16
  %i.xn = insertelement <8 x i32> poison, i32 %i.xm, i64 0
  %i.xo = bitcast <8 x i32> %i.xn to <8 x float>
  %i.xp = shufflevector <8 x float> %i.xo, <8 x float> poison, <8 x i32> zeroinitializer
  %i.xq = getelementptr inbounds [2 x i8], ptr %i.xj, i64 %i.xh
  %i.xr = load i16, ptr %i.xq, align 2, !tbaa !89
  %i.xs = zext i16 %i.xr to i32
  %i.xt = shl nuw i32 %i.xs, 16
  %i.xu = insertelement <8 x i32> poison, i32 %i.xt, i64 0
  %i.xv = bitcast <8 x i32> %i.xu to <8 x float>
  %i.xw = shufflevector <8 x float> %i.xv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.xx = load <8 x i16>, ptr %i.ws, align 16, !tbaa !82 ; 2 uses
  %i.xy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.xx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.xz = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.xx, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ya = shufflevector <8 x i16> %i.xy, <8 x i16> %i.xz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yb = bitcast <16 x i16> %i.ya to <8 x float>
  %i.yc = fmul fast <8 x float> %i.xp, %i.yb
  %i.yd = fadd fast <8 x float> %i.yc, %.161448.us
  %i.ye = getelementptr inbounds nuw i8, ptr %i.ws, i64 16
  %i.yf = load <8 x i16>, ptr %i.ye, align 16, !tbaa !82 ; 2 uses
  %i.yg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yh = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.yf, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.yi = shufflevector <8 x i16> %i.yg, <8 x i16> %i.yh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yj = bitcast <16 x i16> %i.yi to <8 x float>
  %i.yk = fmul fast <8 x float> %i.xw, %i.yj
  %i.yl = fadd fast <8 x float> %i.yk, %.1512701447.us
  br label %bb.w

bb.w:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit387.us, %bb.v, %bb.u
  %.161271.us = phi nsz <8 x float> [ %.1512701447.us, %bb.u ], [ %i.yl, %_ZN4ncnn3MatD2Ev.exit387.us ], [ %.1512701447.us, %bb.v ] ; 2 uses
  %.17.us = phi nsz <8 x float> [ %.161448.us, %bb.u ], [ %i.yd, %_ZN4ncnn3MatD2Ev.exit387.us ], [ %.161448.us, %bb.v ] ; 2 uses
  %indvars.iv.next1543 = add nuw nsw i64 %indvars.iv1542, 1 ; 2 uses
  %exitcond1546.not = icmp eq i64 %indvars.iv.next1543, %wide.trip.count1545
  br i1 %exitcond1546.not, label %.loopexit1322.us, label %bb.u, !llvm.loop !745

.loopexit1322.us:                                 ; preds = %bb.w, %.preheader1321.us, %bb.t, %bb.s
  %.171272.us = phi nsz <8 x float> [ %.1412691451.us, %bb.s ], [ %.1412691451.us, %bb.t ], [ %.1412691451.us, %.preheader1321.us ], [ %.161271.us, %bb.w ] ; 3 uses
  %.18.us = phi nsz <8 x float> [ %.151452.us, %bb.s ], [ %.151452.us, %bb.t ], [ %.151452.us, %.preheader1321.us ], [ %.17.us, %bb.w ] ; 3 uses
  %i.ym = add nuw nsw i32 %.03231453.us, 1        ; 2 uses
  %exitcond1547.not = icmp eq i32 %i.ym, %i.vj
  br i1 %exitcond1547.not, label %._crit_edge.us1471, label %bb.s, !llvm.loop !746

.lr.ph.us1468:                                    ; preds = %.preheader1321.us
  %i.yn = load i32, ptr %13, align 4, !tbaa !61
  %i.yo = load i32, ptr %14, align 4, !tbaa !61
  %invariant.op.us1469 = sub i32 %.neg1312, %i.yo
  %i.yp = mul nuw nsw i32 %i.wg, %.03231453.us
  %i.yq = sext i32 %i.wf to i64
  %wide.trip.count1545 = zext nneg i32 %i.wg to i64
  br label %bb.u

._crit_edge.us1471:                               ; preds = %.loopexit1322.us
end_hunk_1

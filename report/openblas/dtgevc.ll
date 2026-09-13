Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtgevc?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@dtgevc_:bb.a
  %i.ys = load i32, ptr %3, align 4, !tbaa !104   ; 2 uses
  %i.yt = sext i32 %i.ys to i64                   ; 4 uses
  %i.yu = icmp slt i64 %indvars.iv2088, %i.yt
  br i1 %i.yu, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.yv = add nsw i64 %indvars.iv2088, 1          ; 2 uses
  %i.yw = mul nsw i64 %indvars.iv2088, %i.ls
  %i.yx = getelementptr [8 x i8], ptr %i.aa, i64 %i.yv
  %i.yy = getelementptr [8 x i8], ptr %i.yx, i64 %i.yw
  %i.yz = load double, ptr %i.yy, align 8, !tbaa !106
  %i.za = fcmp une double %i.yz, 0.000000e+00
  br i1 %i.za, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.zb = trunc nsw i64 %i.yv to i32
  %i.zc = mul i32 %i.lo, %i.zb
  %i.zd = sext i32 %i.zc to i64
  %i.ze = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.zd
  %i.zf = load double, ptr %i.ze, align 8, !tbaa !106
  store double %i.zf, ptr %i.lq, align 8, !tbaa !106
  store i32 2, ptr %i.q, align 4, !tbaa !104
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw, %bb.bu
  %i.zg = phi i32 [ 2, %bb.bw ], [ 1, %bb.bv ], [ 1, %bb.bu ] ; 8 uses
  %.not1560 = phi i1 [ false, %bb.bw ], [ true, %bb.bv ], [ true, %bb.bu ] ; 2 uses
  %.11418 = phi i32 [ 1, %bb.bw ], [ 0, %bb.bv ], [ 0, %bb.bu ]
  %i.zh = fcmp ole double %.114361785, 1.000000e+00
  %i.zi = select i1 %i.zh, double 1.000000e+00, double %.114361785
  %i.zj = fdiv double 1.000000e+00, %i.zi         ; 5 uses
  %i.zk = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv2088 ; 2 uses
  %i.zl = load double, ptr %i.zk, align 8, !tbaa !106 ; 3 uses
  %i.zm = getelementptr [8 x i8], ptr %i.ak, i64 %indvars.iv2088
  %i.zn = getelementptr [8 x i8], ptr %i.zm, i64 %i.yt ; 2 uses
  %i.zo = load double, ptr %i.zn, align 8, !tbaa !106 ; 3 uses
  %i.zp = fcmp oge double %i.zl, %i.zo
  %i.zq = select i1 %i.zp, double %i.zl, double %i.zo ; 3 uses
  store double %i.zq, ptr %i.g, align 8, !tbaa !106
  %i.zr = fmul double %i.yg, %i.zo
  %i.zs = call double @llvm.fmuladd.f64(double %i.yf, double %i.zl, double %i.zr) ; 2 uses
  %i.zt = fcmp oge double %i.zq, %i.zs
  %i.zu = select i1 %i.zt, double %i.zq, double %i.zs ; 4 uses
  store double %i.zu, ptr %i.i, align 8, !tbaa !106
  br i1 %.not1560, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.zv = getelementptr i8, ptr %i.zk, i64 8
  %i.zw = load double, ptr %i.zv, align 8, !tbaa !106 ; 3 uses
  %i.zx = fcmp oge double %i.zu, %i.zw
  %i.zy = select i1 %i.zx, double %i.zu, double %i.zw ; 2 uses
  %i.zz = getelementptr i8, ptr %i.zn, i64 8
  %i.aaa = load double, ptr %i.zz, align 8, !tbaa !106 ; 3 uses
  %i.aab = fcmp oge double %i.zy, %i.aaa
  %i.aac = select i1 %i.aab, double %i.zy, double %i.aaa ; 3 uses
  store double %i.aac, ptr %i.g, align 8, !tbaa !106
  %i.aad = fmul double %i.yg, %i.aaa
  %i.aae = call double @llvm.fmuladd.f64(double %i.yf, double %i.zw, double %i.aad) ; 2 uses
  %i.aaf = fcmp oge double %i.aac, %i.aae
  %i.aag = select i1 %i.aaf, double %i.aac, double %i.aae ; 2 uses
  store double %i.aag, ptr %i.i, align 8, !tbaa !106
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.aah = phi double [ %i.aag, %bb.by ], [ %i.zu, %bb.bx ]
  %i.aai = fmul double %i.mc, %i.zj
  %i.aaj = fcmp ogt double %i.aah, %i.aai
  %.pre2304 = load i32, ptr %i.t, align 4, !tbaa !104 ; 8 uses
  br i1 %i.aaj, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.aak = add nsw i32 %.pre2304, -1
  store i32 %i.aak, ptr %i.f, align 4, !tbaa !104
  %.not1561.not1749 = icmp sgt i32 %.pre2304, 0
  %.not1568.not1745 = icmp slt i64 %indvars.iv2025, %indvars.iv2088
  %or.cond = and i1 %.not1561.not1749, %.not1568.not1745
  br i1 %or.cond, label %.preheader1684.preheader, label %._crit_edge1751.split

.preheader1684.preheader:                         ; preds = %bb.ca
  %wide.trip.count2037 = zext nneg i32 %.pre2304 to i64
  %wide.trip.count2031 = and i64 %indvars.iv2088, 4294967295
  %min.iters.check2674 = icmp ult i64 %i.ym, 4
  %min.iters.check2676 = icmp ult i64 %i.ym, 16
  %i.aal = and i64 %i.ym, 12
  %n.vec2678 = and i64 %i.ym, -16                 ; 4 uses
  %i.aam = add i64 %indvars.iv2025, %n.vec2678
  %broadcast.splatinsert2679 = insertelement <4 x double> poison, double %i.zj, i64 0
  %broadcast.splat2680 = shufflevector <4 x double> %broadcast.splatinsert2679, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %cmp.n2689 = icmp eq i64 %i.ym, %n.vec2678
  %min.epilog.iters.check2694 = icmp eq i64 %i.aal, 0
  %n.vec2696 = and i64 %i.ym, -4                  ; 3 uses
  %i.aan = add i64 %indvars.iv2025, %n.vec2696
  %broadcast.splatinsert2697 = insertelement <4 x double> poison, double %i.zj, i64 0
  %broadcast.splat2698 = shufflevector <4 x double> %broadcast.splatinsert2697, <4 x double> poison, <4 x i32> zeroinitializer
  %cmp.n2704 = icmp eq i64 %i.ym, %n.vec2696
  br label %iter.check2691

iter.check2691:                                   ; preds = %.preheader1684.preheader, %._crit_edge1748
  %indvars.iv2033 = phi i64 [ 0, %.preheader1684.preheader ], [ %indvars.iv.next2034, %._crit_edge1748 ] ; 2 uses
  %i.aao = add nuw nsw i64 %indvars.iv2033, 2
  %i.aap = mul nsw i64 %i.aao, %i.yt
  %invariant.gep2465 = getelementptr [8 x i8], ptr %i.ak, i64 %i.aap ; 3 uses
  br i1 %min.iters.check2674, label %vec.epilog.scalar.ph2692.preheader, label %vector.main.loop.iter.check2675

vector.main.loop.iter.check2675:                  ; preds = %iter.check2691
  br i1 %min.iters.check2676, label %vec.epilog.ph2695, label %vector.ph2677

vector.ph2677:                                    ; preds = %vector.main.loop.iter.check2675
  %i.aaq = getelementptr [8 x i8], ptr %invariant.gep2465, i64 %indvars.iv2025
  br label %vector.body2681

vector.body2681:                                  ; preds = %vector.body2681, %vector.ph2677
  %index2682 = phi i64 [ 0, %vector.ph2677 ], [ %index.next2687, %vector.body2681 ] ; 2 uses
  %i.aar = getelementptr [8 x i8], ptr %i.aaq, i64 %index2682 ; 5 uses
  %i.aas = getelementptr i8, ptr %i.aar, i64 32   ; 2 uses
  %i.aat = getelementptr i8, ptr %i.aar, i64 64   ; 2 uses
  %i.aau = getelementptr i8, ptr %i.aar, i64 96   ; 2 uses
  %wide.load2683 = load <4 x double>, ptr %i.aar, align 8, !tbaa !106
  %wide.load2684 = load <4 x double>, ptr %i.aas, align 8, !tbaa !106
  %wide.load2685 = load <4 x double>, ptr %i.aat, align 8, !tbaa !106
  %wide.load2686 = load <4 x double>, ptr %i.aau, align 8, !tbaa !106
  %i.aav = fmul <4 x double> %broadcast.splat2680, %wide.load2683
  %i.aaw = fmul <4 x double> %broadcast.splat2680, %wide.load2684
  %i.aax = fmul <4 x double> %broadcast.splat2680, %wide.load2685
  %i.aay = fmul <4 x double> %broadcast.splat2680, %wide.load2686
  store <4 x double> %i.aav, ptr %i.aar, align 8, !tbaa !106
  store <4 x double> %i.aaw, ptr %i.aas, align 8, !tbaa !106
  store <4 x double> %i.aax, ptr %i.aat, align 8, !tbaa !106
  store <4 x double> %i.aay, ptr %i.aau, align 8, !tbaa !106
  %index.next2687 = add nuw i64 %index2682, 16    ; 2 uses
  %i.aaz = icmp eq i64 %index.next2687, %n.vec2678
  br i1 %i.aaz, label %middle.block2688, label %vector.body2681, !llvm.loop !15

middle.block2688:                                 ; preds = %vector.body2681
  br i1 %cmp.n2689, label %._crit_edge1748, label %vec.epilog.iter.check2693

vec.epilog.iter.check2693:                        ; preds = %middle.block2688
  br i1 %min.epilog.iters.check2694, label %vec.epilog.scalar.ph2692.preheader, label %vec.epilog.ph2695, !prof !111

vec.epilog.ph2695:                                ; preds = %vector.main.loop.iter.check2675, %vec.epilog.iter.check2693
  %vec.epilog.resume.val2690 = phi i64 [ %n.vec2678, %vec.epilog.iter.check2693 ], [ 0, %vector.main.loop.iter.check2675 ]
  %i.aba = getelementptr [8 x i8], ptr %invariant.gep2465, i64 %indvars.iv2025
  br label %vec.epilog.vector.body2699

vec.epilog.vector.body2699:                       ; preds = %vec.epilog.vector.body2699, %vec.epilog.ph2695
  %index2700 = phi i64 [ %vec.epilog.resume.val2690, %vec.epilog.ph2695 ], [ %index.next2702, %vec.epilog.vector.body2699 ] ; 2 uses
  %i.abb = getelementptr [8 x i8], ptr %i.aba, i64 %index2700 ; 2 uses
  %wide.load2701 = load <4 x double>, ptr %i.abb, align 8, !tbaa !106
  %i.abc = fmul <4 x double> %broadcast.splat2698, %wide.load2701
  store <4 x double> %i.abc, ptr %i.abb, align 8, !tbaa !106
  %index.next2702 = add nuw i64 %index2700, 4     ; 2 uses
  %i.abd = icmp eq i64 %index.next2702, %n.vec2696
  br i1 %i.abd, label %vec.epilog.middle.block2703, label %vec.epilog.vector.body2699, !llvm.loop !16

vec.epilog.middle.block2703:                      ; preds = %vec.epilog.vector.body2699
  br i1 %cmp.n2704, label %._crit_edge1748, label %vec.epilog.scalar.ph2692.preheader

vec.epilog.scalar.ph2692.preheader:               ; preds = %iter.check2691, %vec.epilog.iter.check2693, %vec.epilog.middle.block2703
  %indvars.iv2027.ph = phi i64 [ %indvars.iv2025, %iter.check2691 ], [ %i.aam, %vec.epilog.iter.check2693 ], [ %i.aan, %vec.epilog.middle.block2703 ]
  br label %vec.epilog.scalar.ph2692

vec.epilog.scalar.ph2692:                         ; preds = %vec.epilog.scalar.ph2692.preheader, %vec.epilog.scalar.ph2692
  %indvars.iv2027 = phi i64 [ %indvars.iv.next2028, %vec.epilog.scalar.ph2692 ], [ %indvars.iv2027.ph, %vec.epilog.scalar.ph2692.preheader ] ; 2 uses
  %gep2466 = getelementptr [8 x i8], ptr %invariant.gep2465, i64 %indvars.iv2027 ; 2 uses
  %i.abe = load double, ptr %gep2466, align 8, !tbaa !106
  %i.abf = fmul double %i.zj, %i.abe
  store double %i.abf, ptr %gep2466, align 8, !tbaa !106
  %indvars.iv.next2028 = add nuw nsw i64 %indvars.iv2027, 1 ; 2 uses
  %exitcond2032.not = icmp eq i64 %indvars.iv.next2028, %wide.trip.count2031
  br i1 %exitcond2032.not, label %._crit_edge1748, label %vec.epilog.scalar.ph2692, !llvm.loop !17

._crit_edge1748:                                  ; preds = %vec.epilog.scalar.ph2692, %vec.epilog.middle.block2703, %middle.block2688
  %indvars.iv.next2034 = add nuw nsw i64 %indvars.iv2033, 1 ; 2 uses
  %exitcond2038.not = icmp eq i64 %indvars.iv.next2034, %wide.trip.count2037
  br i1 %exitcond2038.not, label %._crit_edge1751.split, label %iter.check2691, !llvm.loop !18

._crit_edge1751.split:                            ; preds = %._crit_edge1748, %bb.ca
  %i.abg = fmul double %.114361785, %i.zj
  br label %bb.cb

bb.cb:                                            ; preds = %._crit_edge1751.split, %bb.bz
  %.21437 = phi double [ %i.abg, %._crit_edge1751.split ], [ %.114361785, %bb.bz ] ; 2 uses
  %.not15621765 = icmp slt i32 %.pre2304, 1
  br i1 %.not15621765, label %.lr.ph1775, label %.lr.ph1768.split

.lr.ph1768.split:                                 ; preds = %bb.cb
  %.not1567.not1752 = icmp slt i64 %indvars.iv2025, %indvars.iv2088
  br i1 %.not1567.not1752, label %.lr.ph1763.us.preheader, label %.lr.ph1763.preheader

.lr.ph1763.preheader:                             ; preds = %.lr.ph1768.split
  %xtraiter3168 = and i32 %.pre2304, 3            ; 3 uses
  %i.abh = icmp ult i32 %.pre2304, 4
  br i1 %i.abh, label %.lr.ph1763.epil.preheader, label %.lr.ph1763.preheader.new

.lr.ph1763.preheader.new:                         ; preds = %.lr.ph1763.preheader
  %unroll_iter3172 = and i32 %.pre2304, 2147483644
  %i.abi = zext nneg i32 %i.zg to i64
  %trip.count.minus.12669 = add nsw i64 %i.abi, -1
  %broadcast.splatinsert2670 = insertelement <2 x i64> poison, i64 %trip.count.minus.12669, i64 0
  %broadcast.splat2671 = shufflevector <2 x i64> %broadcast.splatinsert2670, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.abj = icmp samesign uge <2 x i64> %broadcast.splat2671, <i64 0, i64 1> ; 2 uses
  %i.abk = zext nneg i32 %i.zg to i64
  %trip.count.minus.12669.1 = add nsw i64 %i.abk, -1
  %broadcast.splatinsert2670.1 = insertelement <2 x i64> poison, i64 %trip.count.minus.12669.1, i64 0
  %broadcast.splat2671.1 = shufflevector <2 x i64> %broadcast.splatinsert2670.1, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.abl = icmp samesign uge <2 x i64> %broadcast.splat2671.1, <i64 0, i64 1> ; 2 uses
  %i.abm = zext nneg i32 %i.zg to i64
  %trip.count.minus.12669.2 = add nsw i64 %i.abm, -1
  %broadcast.splatinsert2670.2 = insertelement <2 x i64> poison, i64 %trip.count.minus.12669.2, i64 0
  %broadcast.splat2671.2 = shufflevector <2 x i64> %broadcast.splatinsert2670.2, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.abn = icmp samesign uge <2 x i64> %broadcast.splat2671.2, <i64 0, i64 1> ; 2 uses
  %i.abo = zext nneg i32 %i.zg to i64
  %trip.count.minus.12669.3 = add nsw i64 %i.abo, -1
  %broadcast.splatinsert2670.3 = insertelement <2 x i64> poison, i64 %trip.count.minus.12669.3, i64 0
  %broadcast.splat2671.3 = shufflevector <2 x i64> %broadcast.splatinsert2670.3, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.abp = icmp samesign uge <2 x i64> %broadcast.splat2671.3, <i64 0, i64 1> ; 2 uses
  br label %.lr.ph1763

.lr.ph1763.us.preheader:                          ; preds = %.lr.ph1768.split
  %i.abq = add nuw i32 %.pre2304, 1
  %wide.trip.count2062 = zext i32 %i.abq to i64
  %i.abr = trunc i64 %indvars.iv2088 to i32       ; 3 uses
  %wide.trip.count2050 = and i64 %indvars.iv2088, 4294967295 ; 2 uses
  %i.abs = mul nsw i32 %i.y, %i.abr
  %i.abt = mul nsw i32 %i.ab, %i.abr
  %i.abu = sext i32 %i.abs to i64
  %i.abv = sext i32 %i.abt to i64
  %invariant.gep2467 = getelementptr [8 x i8], ptr %i.aa, i64 %i.abu ; 9 uses
  %invariant.gep2471 = getelementptr [8 x i8], ptr %i.ad, i64 %i.abv ; 9 uses
  %xtraiter3176 = and i64 %i.yj, 7                ; 2 uses
  %lcmp.mod3177.not = icmp eq i64 %xtraiter3176, 0
  %i.abw = icmp ult i64 %.reass3285, 7
  %i.abx = add i32 %i.abr, 1                      ; 2 uses
  %i.aby = mul nsw i32 %i.abx, %i.y
  %i.abz = mul nsw i32 %i.abx, %i.ab
  %i.aca = sext i32 %i.aby to i64
  %i.acb = sext i32 %i.abz to i64
  %invariant.gep2467.1 = getelementptr [8 x i8], ptr %i.aa, i64 %i.aca ; 9 uses
  %invariant.gep2471.1 = getelementptr [8 x i8], ptr %i.ad, i64 %i.acb ; 9 uses
  %xtraiter3176.1 = and i64 %i.yj, 7              ; 2 uses
  %lcmp.mod3177.1.not = icmp eq i64 %xtraiter3176.1, 0
  %i.acc = icmp ult i64 %.reass3285, 7
  br label %.lr.ph1763.us

.lr.ph1763.us:                                    ; preds = %.lr.ph1763.us.preheader, %._crit_edge1764.split.us.us
  %indvars.iv2058 = phi i64 [ 1, %.lr.ph1763.us.preheader ], [ %indvars.iv.next2059, %._crit_edge1764.split.us.us ] ; 2 uses
  %indvars.iv2058.tr = trunc nuw i64 %indvars.iv2058 to i32
  %i.acd = shl nuw i32 %indvars.iv2058.tr, 1      ; 2 uses
  %indvars.iv.next2059 = add nuw nsw i64 %indvars.iv2058, 1 ; 3 uses
  %i.ace = mul nsw i64 %indvars.iv.next2059, %i.yt
  %invariant.gep2469 = getelementptr [8 x i8], ptr %i.ak, i64 %i.ace ; 18 uses
  %i.acf = add i32 %i.acd, -2
  %i.acg = sext i32 %i.acf to i64                 ; 2 uses
  %i.ach = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.acg
  %i.aci = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.acg
  br i1 %lcmp.mod3177.not, label %.prol.loopexit3175, label %.prol.preheader3174

.prol.preheader3174:                              ; preds = %.lr.ph1763.us, %.prol.preheader3174
  %indvars.iv2046.prol = phi i64 [ %indvars.iv.next2047.prol, %.prol.preheader3174 ], [ %indvars.iv2025, %.lr.ph1763.us ] ; 4 uses
  %i.acj = phi double [ %i.acp, %.prol.preheader3174 ], [ 0.000000e+00, %.lr.ph1763.us ]
  %i.ack = phi double [ %i.acn, %.prol.preheader3174 ], [ 0.000000e+00, %.lr.ph1763.us ]
  %prol.iter3178 = phi i64 [ %prol.iter3178.next, %.prol.preheader3174 ], [ 0, %.lr.ph1763.us ]
  %gep2468.prol = getelementptr [8 x i8], ptr %invariant.gep2467, i64 %indvars.iv2046.prol
  %i.acl = load double, ptr %gep2468.prol, align 8, !tbaa !106
  %gep2470.prol = getelementptr [8 x i8], ptr %invariant.gep2469, i64 %indvars.iv2046.prol
  %i.acm = load double, ptr %gep2470.prol, align 8, !tbaa !106 ; 2 uses
  %i.acn = call double @llvm.fmuladd.f64(double %i.acl, double %i.acm, double %i.ack) ; 3 uses
  %gep2472.prol = getelementptr [8 x i8], ptr %invariant.gep2471, i64 %indvars.iv2046.prol
  %i.aco = load double, ptr %gep2472.prol, align 8, !tbaa !106
  %i.acp = call double @llvm.fmuladd.f64(double %i.aco, double %i.acm, double %i.acj) ; 3 uses
  %indvars.iv.next2047.prol = add nuw nsw i64 %indvars.iv2046.prol, 1 ; 2 uses
  %prol.iter3178.next = add i64 %prol.iter3178, 1 ; 2 uses
  %prol.iter3178.cmp.not = icmp eq i64 %prol.iter3178.next, %xtraiter3176
  br i1 %prol.iter3178.cmp.not, label %.prol.loopexit3175, label %.prol.preheader3174, !llvm.loop !19

.prol.loopexit3175:                               ; preds = %.prol.preheader3174, %.lr.ph1763.us
  %.lcssa3138.unr = phi double [ poison, %.lr.ph1763.us ], [ %i.acn, %.prol.preheader3174 ]
  %.lcssa3137.unr = phi double [ poison, %.lr.ph1763.us ], [ %i.acp, %.prol.preheader3174 ]
  %indvars.iv2046.unr = phi i64 [ %indvars.iv2025, %.lr.ph1763.us ], [ %indvars.iv.next2047.prol, %.prol.preheader3174 ]
  %.unr3179 = phi double [ 0.000000e+00, %.lr.ph1763.us ], [ %i.acp, %.prol.preheader3174 ]
  %.unr3180 = phi double [ 0.000000e+00, %.lr.ph1763.us ], [ %i.acn, %.prol.preheader3174 ]
  br i1 %i.abw, label %._crit_edge1756.us.us, label %.lr.ph1755.us.us.new

.lr.ph1755.us.us.new:                             ; preds = %.prol.loopexit3175, %.lr.ph1755.us.us.new
  %indvars.iv2046 = phi i64 [ %indvars.iv.next2047.7, %.lr.ph1755.us.us.new ], [ %indvars.iv2046.unr, %.prol.loopexit3175 ] ; 11 uses
  %i.acq = phi double [ %i.aef, %.lr.ph1755.us.us.new ], [ %.unr3179, %.prol.loopexit3175 ]
  %i.acr = phi double [ %i.aed, %.lr.ph1755.us.us.new ], [ %.unr3180, %.prol.loopexit3175 ]
  %gep2468 = getelementptr [8 x i8], ptr %invariant.gep2467, i64 %indvars.iv2046
  %i.acs = load double, ptr %gep2468, align 8, !tbaa !106
  %gep2470 = getelementptr [8 x i8], ptr %invariant.gep2469, i64 %indvars.iv2046
  %i.act = load double, ptr %gep2470, align 8, !tbaa !106 ; 2 uses
  %i.acu = call double @llvm.fmuladd.f64(double %i.acs, double %i.act, double %i.acr)
  %gep2472 = getelementptr [8 x i8], ptr %invariant.gep2471, i64 %indvars.iv2046
  %i.acv = load double, ptr %gep2472, align 8, !tbaa !106
  %i.acw = call double @llvm.fmuladd.f64(double %i.acv, double %i.act, double %i.acq)
  %indvars.iv.next2047 = add nuw nsw i64 %indvars.iv2046, 1 ; 3 uses
  %gep2468.1 = getelementptr [8 x i8], ptr %invariant.gep2467, i64 %indvars.iv.next2047
  %i.acx = load double, ptr %gep2468.1, align 8, !tbaa !106
  %gep2470.1 = getelementptr [8 x i8], ptr %invariant.gep2469, i64 %indvars.iv.next2047
  %i.acy = load double, ptr %gep2470.1, align 8, !tbaa !106 ; 2 uses
  %i.acz = call double @llvm.fmuladd.f64(double %i.acx, double %i.acy, double %i.acu)
  %gep2472.1 = getelementptr [8 x i8], ptr %invariant.gep2471, i64 %indvars.iv.next2047
  %i.ada = load double, ptr %gep2472.1, align 8, !tbaa !106
  %i.adb = call double @llvm.fmuladd.f64(double %i.ada, double %i.acy, double %i.acw)
  %indvars.iv.next2047.1 = add nuw nsw i64 %indvars.iv2046, 2 ; 3 uses
  %gep2468.2 = getelementptr [8 x i8], ptr %invariant.gep2467, i64 %indvars.iv.next2047.1
  %i.adc = load double, ptr %gep2468.2, align 8, !tbaa !106
  %gep2470.2 = getelementptr [8 x i8], ptr %invariant.gep2469, i64 %indvars.iv.next2047.1
  %i.add = load double, ptr %gep2470.2, align 8, !tbaa !106 ; 2 uses
  %i.ade = call double @llvm.fmuladd.f64(double %i.adc, double %i.add, double %i.acz)
  %gep2472.2 = getelementptr [8 x i8], ptr %invariant.gep2471, i64 %indvars.iv.next2047.1
  %i.adf = load double, ptr %gep2472.2, align 8, !tbaa !106
  %i.adg = call double @llvm.fmuladd.f64(double %i.adf, double %i.add, double %i.adb)
  %indvars.iv.next2047.2 = add nuw nsw i64 %indvars.iv2046, 3 ; 3 uses
  %gep2468.3 = getelementptr [8 x i8], ptr %invariant.gep2467, i64 %indvars.iv.next2047.2
  %i.adh = load double, ptr %gep2468.3, align 8, !tbaa !106
  %gep2470.3 = getelementptr [8 x i8], ptr %invariant.gep2469, i64 %indvars.iv.next2047.2
  %i.adi = load double, ptr %gep2470.3, align 8, !tbaa !106 ; 2 uses
  %i.adj = call double @llvm.fmuladd.f64(double %i.adh, double %i.adi, double %i.ade)
  %gep2472.3 = getelementptr [8 x i8], ptr %invariant.gep2471, i64 %indvars.iv.next2047.2
  %i.adk = load double, ptr %gep2472.3, align 8, !tbaa !106
  %i.adl = call double @llvm.fmuladd.f64(double %i.adk, double %i.adi, double %i.adg)
  %indvars.iv.next2047.3 = add nuw nsw i64 %indvars.iv2046, 4 ; 3 uses
  %gep2468.4 = getelementptr [8 x i8], ptr %invariant.gep2467, i64 %indvars.iv.next2047.3
  %i.adm = load double, ptr %gep2468.4, align 8, !tbaa !106
  %gep2470.4 = getelementptr [8 x i8], ptr %invariant.gep2469, i64 %indvars.iv.next2047.3
  %i.adn = load double, ptr %gep2470.4, align 8, !tbaa !106 ; 2 uses
  %i.ado = call double @llvm.fmuladd.f64(double %i.adm, double %i.adn, double %i.adj)
  %gep2472.4 = getelementptr [8 x i8], ptr %invariant.gep2471, i64 %indvars.iv.next2047.3
  %i.adp = load double, ptr %gep2472.4, align 8, !tbaa !106
  %i.adq = call double @llvm.fmuladd.f64(double %i.adp, double %i.adn, double %i.adl)
  %indvars.iv.next2047.4 = add nuw nsw i64 %indvars.iv2046, 5 ; 3 uses
  %gep2468.5 = getelementptr [8 x i8], ptr %invariant.gep2467, i64 %indvars.iv.next2047.4
  %i.adr = load double, ptr %gep2468.5, align 8, !tbaa !106
  %gep2470.5 = getelementptr [8 x i8], ptr %invariant.gep2469, i64 %indvars.iv.next2047.4
  %i.ads = load double, ptr %gep2470.5, align 8, !tbaa !106 ; 2 uses
  %i.adt = call double @llvm.fmuladd.f64(double %i.adr, double %i.ads, double %i.ado)
  %gep2472.5 = getelementptr [8 x i8], ptr %invariant.gep2471, i64 %indvars.iv.next2047.4
  %i.adu = load double, ptr %gep2472.5, align 8, !tbaa !106
  %i.adv = call double @llvm.fmuladd.f64(double %i.adu, double %i.ads, double %i.adq)
  %indvars.iv.next2047.5 = add nuw nsw i64 %indvars.iv2046, 6 ; 3 uses
  %gep2468.6 = getelementptr [8 x i8], ptr %invariant.gep2467, i64 %indvars.iv.next2047.5
  %i.adw = load double, ptr %gep2468.6, align 8, !tbaa !106
  %gep2470.6 = getelementptr [8 x i8], ptr %invariant.gep2469, i64 %indvars.iv.next2047.5
  %i.adx = load double, ptr %gep2470.6, align 8, !tbaa !106 ; 2 uses
  %i.ady = call double @llvm.fmuladd.f64(double %i.adw, double %i.adx, double %i.adt)
  %gep2472.6 = getelementptr [8 x i8], ptr %invariant.gep2471, i64 %indvars.iv.next2047.5
  %i.adz = load double, ptr %gep2472.6, align 8, !tbaa !106
  %i.aea = call double @llvm.fmuladd.f64(double %i.adz, double %i.adx, double %i.adv)
  %indvars.iv.next2047.6 = add nuw nsw i64 %indvars.iv2046, 7 ; 3 uses
  %gep2468.7 = getelementptr [8 x i8], ptr %invariant.gep2467, i64 %indvars.iv.next2047.6
  %i.aeb = load double, ptr %gep2468.7, align 8, !tbaa !106
  %gep2470.7 = getelementptr [8 x i8], ptr %invariant.gep2469, i64 %indvars.iv.next2047.6
  %i.aec = load double, ptr %gep2470.7, align 8, !tbaa !106 ; 2 uses
  %i.aed = call double @llvm.fmuladd.f64(double %i.aeb, double %i.aec, double %i.ady) ; 2 uses
  %gep2472.7 = getelementptr [8 x i8], ptr %invariant.gep2471, i64 %indvars.iv.next2047.6
  %i.aee = load double, ptr %gep2472.7, align 8, !tbaa !106
  %i.aef = call double @llvm.fmuladd.f64(double %i.aee, double %i.aec, double %i.aea) ; 2 uses
  %indvars.iv.next2047.7 = add nuw nsw i64 %indvars.iv2046, 8 ; 2 uses
  %exitcond2051.not.7 = icmp eq i64 %indvars.iv.next2047.7, %wide.trip.count2050
  br i1 %exitcond2051.not.7, label %._crit_edge1756.us.us, label %.lr.ph1755.us.us.new, !llvm.loop !20

._crit_edge1756.us.us:                            ; preds = %.lr.ph1755.us.us.new, %.prol.loopexit3175
  %.lcssa3138 = phi double [ %.lcssa3138.unr, %.prol.loopexit3175 ], [ %i.aed, %.lr.ph1755.us.us.new ]
  %.lcssa3137 = phi double [ %.lcssa3137.unr, %.prol.loopexit3175 ], [ %i.aef, %.lr.ph1755.us.us.new ]
  store double %.lcssa3138, ptr %i.ach, align 16, !tbaa !106
  store double %.lcssa3137, ptr %i.aci, align 16, !tbaa !106
  br i1 %.not1560, label %._crit_edge1764.split.us.us, label %.lr.ph1755.us.us.1

.lr.ph1755.us.us.1:                               ; preds = %._crit_edge1756.us.us
  %i.aeg = add i32 %i.acd, -1
  %i.aeh = sext i32 %i.aeg to i64                 ; 2 uses
  %i.aei = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.aeh
  %i.aej = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.aeh
  br i1 %lcmp.mod3177.1.not, label %.prol.loopexit3175.1, label %.prol.preheader3174.1

.prol.preheader3174.1:                            ; preds = %.lr.ph1755.us.us.1, %.prol.preheader3174.1
  %indvars.iv2046.prol.1 = phi i64 [ %indvars.iv.next2047.prol.1, %.prol.preheader3174.1 ], [ %indvars.iv2025, %.lr.ph1755.us.us.1 ] ; 4 uses
  %i.aek = phi double [ %i.aeq, %.prol.preheader3174.1 ], [ 0.000000e+00, %.lr.ph1755.us.us.1 ]
  %i.ael = phi double [ %i.aeo, %.prol.preheader3174.1 ], [ 0.000000e+00, %.lr.ph1755.us.us.1 ]
  %prol.iter3178.1 = phi i64 [ %prol.iter3178.next.1, %.prol.preheader3174.1 ], [ 0, %.lr.ph1755.us.us.1 ]
  %gep2468.prol.1 = getelementptr [8 x i8], ptr %invariant.gep2467.1, i64 %indvars.iv2046.prol.1
  %i.aem = load double, ptr %gep2468.prol.1, align 8, !tbaa !106
  %gep2470.prol.1 = getelementptr [8 x i8], ptr %invariant.gep2469, i64 %indvars.iv2046.prol.1
  %i.aen = load double, ptr %gep2470.prol.1, align 8, !tbaa !106 ; 2 uses
  %i.aeo = call double @llvm.fmuladd.f64(double %i.aem, double %i.aen, double %i.ael) ; 3 uses
  %gep2472.prol.1 = getelementptr [8 x i8], ptr %invariant.gep2471.1, i64 %indvars.iv2046.prol.1
  %i.aep = load double, ptr %gep2472.prol.1, align 8, !tbaa !106
  %i.aeq = call double @llvm.fmuladd.f64(double %i.aep, double %i.aen, double %i.aek) ; 3 uses
  %indvars.iv.next2047.prol.1 = add nuw nsw i64 %indvars.iv2046.prol.1, 1 ; 2 uses
  %prol.iter3178.next.1 = add i64 %prol.iter3178.1, 1 ; 2 uses
  %prol.iter3178.cmp.1.not = icmp eq i64 %prol.iter3178.next.1, %xtraiter3176.1
  br i1 %prol.iter3178.cmp.1.not, label %.prol.loopexit3175.1, label %.prol.preheader3174.1, !llvm.loop !19

.prol.loopexit3175.1:                             ; preds = %.prol.preheader3174.1, %.lr.ph1755.us.us.1
  %.lcssa3138.unr.1 = phi double [ poison, %.lr.ph1755.us.us.1 ], [ %i.aeo, %.prol.preheader3174.1 ]
  %.lcssa3137.unr.1 = phi double [ poison, %.lr.ph1755.us.us.1 ], [ %i.aeq, %.prol.preheader3174.1 ]
  %indvars.iv2046.unr.1 = phi i64 [ %indvars.iv2025, %.lr.ph1755.us.us.1 ], [ %indvars.iv.next2047.prol.1, %.prol.preheader3174.1 ]
  %.unr3179.1 = phi double [ 0.000000e+00, %.lr.ph1755.us.us.1 ], [ %i.aeq, %.prol.preheader3174.1 ]
  %.unr3180.1 = phi double [ 0.000000e+00, %.lr.ph1755.us.us.1 ], [ %i.aeo, %.prol.preheader3174.1 ]
  br i1 %i.acc, label %._crit_edge1756.us.us.1, label %.lr.ph1755.us.us.new.1

.lr.ph1755.us.us.new.1:                           ; preds = %.prol.loopexit3175.1, %.lr.ph1755.us.us.new.1
  %indvars.iv2046.1 = phi i64 [ %indvars.iv.next2047.7.1, %.lr.ph1755.us.us.new.1 ], [ %indvars.iv2046.unr.1, %.prol.loopexit3175.1 ] ; 11 uses
  %i.aer = phi double [ %i.agg, %.lr.ph1755.us.us.new.1 ], [ %.unr3179.1, %.prol.loopexit3175.1 ]
  %i.aes = phi double [ %i.age, %.lr.ph1755.us.us.new.1 ], [ %.unr3180.1, %.prol.loopexit3175.1 ]
  %gep2468.13181 = getelementptr [8 x i8], ptr %invariant.gep2467.1, i64 %indvars.iv2046.1
  %i.aet = load double, ptr %gep2468.13181, align 8, !tbaa !106
  %gep2470.13182 = getelementptr [8 x i8], ptr %invariant.gep2469, i64 %indvars.iv2046.1
  %i.aeu = load double, ptr %gep2470.13182, align 8, !tbaa !106 ; 2 uses
  %i.aev = call double @llvm.fmuladd.f64(double %i.aet, double %i.aeu, double %i.aes)
  %gep2472.13183 = getelementptr [8 x i8], ptr %invariant.gep2471.1, i64 %indvars.iv2046.1
  %i.aew = load double, ptr %gep2472.13183, align 8, !tbaa !106
  %i.aex = call double @llvm.fmuladd.f64(double %i.aew, double %i.aeu, double %i.aer)
  %indvars.iv.next2047.13184 = add nuw nsw i64 %indvars.iv2046.1, 1 ; 3 uses
  %gep2468.1.1 = getelementptr [8 x i8], ptr %invariant.gep2467.1, i64 %indvars.iv.next2047.13184
  %i.aey = load double, ptr %gep2468.1.1, align 8, !tbaa !106
  %gep2470.1.1 = getelementptr [8 x i8], ptr %invariant.gep2469, i64 %indvars.iv.next2047.13184
  %i.aez = load double, ptr %gep2470.1.1, align 8, !tbaa !106 ; 2 uses
  %i.afa = call double @llvm.fmuladd.f64(double %i.aey, double %i.aez, double %i.aev)
  %gep2472.1.1 = getelementptr [8 x i8], ptr %invariant.gep2471.1, i64 %indvars.iv.next2047.13184
  %i.afb = load double, ptr %gep2472.1.1, align 8, !tbaa !106
  %i.afc = call double @llvm.fmuladd.f64(double %i.afb, double %i.aez, double %i.aex)
  %indvars.iv.next2047.1.1 = add nuw nsw i64 %indvars.iv2046.1, 2 ; 3 uses
  %gep2468.2.1 = getelementptr [8 x i8], ptr %invariant.gep2467.1, i64 %indvars.iv.next2047.1.1
  %i.afd = load double, ptr %gep2468.2.1, align 8, !tbaa !106
  %gep2470.2.1 = getelementptr [8 x i8], ptr %invariant.gep2469, i64 %indvars.iv.next2047.1.1
  %i.afe = load double, ptr %gep2470.2.1, align 8, !tbaa !106 ; 2 uses
  %i.aff = call double @llvm.fmuladd.f64(double %i.afd, double %i.afe, double %i.afa)
  %gep2472.2.1 = getelementptr [8 x i8], ptr %invariant.gep2471.1, i64 %indvars.iv.next2047.1.1
  %i.afg = load double, ptr %gep2472.2.1, align 8, !tbaa !106
  %i.afh = call double @llvm.fmuladd.f64(double %i.afg, double %i.afe, double %i.afc)
  %indvars.iv.next2047.2.1 = add nuw nsw i64 %indvars.iv2046.1, 3 ; 3 uses
  %gep2468.3.1 = getelementptr [8 x i8], ptr %invariant.gep2467.1, i64 %indvars.iv.next2047.2.1
  %i.afi = load double, ptr %gep2468.3.1, align 8, !tbaa !106
  %gep2470.3.1 = getelementptr [8 x i8], ptr %invariant.gep2469, i64 %indvars.iv.next2047.2.1
  %i.afj = load double, ptr %gep2470.3.1, align 8, !tbaa !106 ; 2 uses
  %i.afk = call double @llvm.fmuladd.f64(double %i.afi, double %i.afj, double %i.aff)
  %gep2472.3.1 = getelementptr [8 x i8], ptr %invariant.gep2471.1, i64 %indvars.iv.next2047.2.1
  %i.afl = load double, ptr %gep2472.3.1, align 8, !tbaa !106
  %i.afm = call double @llvm.fmuladd.f64(double %i.afl, double %i.afj, double %i.afh)
  %indvars.iv.next2047.3.1 = add nuw nsw i64 %indvars.iv2046.1, 4 ; 3 uses
  %gep2468.4.1 = getelementptr [8 x i8], ptr %invariant.gep2467.1, i64 %indvars.iv.next2047.3.1
  %i.afn = load double, ptr %gep2468.4.1, align 8, !tbaa !106
  %gep2470.4.1 = getelementptr [8 x i8], ptr %invariant.gep2469, i64 %indvars.iv.next2047.3.1
  %i.afo = load double, ptr %gep2470.4.1, align 8, !tbaa !106 ; 2 uses
  %i.afp = call double @llvm.fmuladd.f64(double %i.afn, double %i.afo, double %i.afk)
  %gep2472.4.1 = getelementptr [8 x i8], ptr %invariant.gep2471.1, i64 %indvars.iv.next2047.3.1
  %i.afq = load double, ptr %gep2472.4.1, align 8, !tbaa !106
  %i.afr = call double @llvm.fmuladd.f64(double %i.afq, double %i.afo, double %i.afm)
  %indvars.iv.next2047.4.1 = add nuw nsw i64 %indvars.iv2046.1, 5 ; 3 uses
  %gep2468.5.1 = getelementptr [8 x i8], ptr %invariant.gep2467.1, i64 %indvars.iv.next2047.4.1
  %i.afs = load double, ptr %gep2468.5.1, align 8, !tbaa !106
  %gep2470.5.1 = getelementptr [8 x i8], ptr %invariant.gep2469, i64 %indvars.iv.next2047.4.1
  %i.aft = load double, ptr %gep2470.5.1, align 8, !tbaa !106 ; 2 uses
  %i.afu = call double @llvm.fmuladd.f64(double %i.afs, double %i.aft, double %i.afp)
  %gep2472.5.1 = getelementptr [8 x i8], ptr %invariant.gep2471.1, i64 %indvars.iv.next2047.4.1
  %i.afv = load double, ptr %gep2472.5.1, align 8, !tbaa !106
  %i.afw = call double @llvm.fmuladd.f64(double %i.afv, double %i.aft, double %i.afr)
  %indvars.iv.next2047.5.1 = add nuw nsw i64 %indvars.iv2046.1, 6 ; 3 uses
  %gep2468.6.1 = getelementptr [8 x i8], ptr %invariant.gep2467.1, i64 %indvars.iv.next2047.5.1
  %i.afx = load double, ptr %gep2468.6.1, align 8, !tbaa !106
  %gep2470.6.1 = getelementptr [8 x i8], ptr %invariant.gep2469, i64 %indvars.iv.next2047.5.1
  %i.afy = load double, ptr %gep2470.6.1, align 8, !tbaa !106 ; 2 uses
  %i.afz = call double @llvm.fmuladd.f64(double %i.afx, double %i.afy, double %i.afu)
  %gep2472.6.1 = getelementptr [8 x i8], ptr %invariant.gep2471.1, i64 %indvars.iv.next2047.5.1
  %i.aga = load double, ptr %gep2472.6.1, align 8, !tbaa !106
  %i.agb = call double @llvm.fmuladd.f64(double %i.aga, double %i.afy, double %i.afw)
  %indvars.iv.next2047.6.1 = add nuw nsw i64 %indvars.iv2046.1, 7 ; 3 uses
  %gep2468.7.1 = getelementptr [8 x i8], ptr %invariant.gep2467.1, i64 %indvars.iv.next2047.6.1
  %i.agc = load double, ptr %gep2468.7.1, align 8, !tbaa !106
  %gep2470.7.1 = getelementptr [8 x i8], ptr %invariant.gep2469, i64 %indvars.iv.next2047.6.1
  %i.agd = load double, ptr %gep2470.7.1, align 8, !tbaa !106 ; 2 uses
  %i.age = call double @llvm.fmuladd.f64(double %i.agc, double %i.agd, double %i.afz) ; 2 uses
  %gep2472.7.1 = getelementptr [8 x i8], ptr %invariant.gep2471.1, i64 %indvars.iv.next2047.6.1
  %i.agf = load double, ptr %gep2472.7.1, align 8, !tbaa !106
  %i.agg = call double @llvm.fmuladd.f64(double %i.agf, double %i.agd, double %i.agb) ; 2 uses
  %indvars.iv.next2047.7.1 = add nuw nsw i64 %indvars.iv2046.1, 8 ; 2 uses
  %exitcond2051.not.7.1 = icmp eq i64 %indvars.iv.next2047.7.1, %wide.trip.count2050
  br i1 %exitcond2051.not.7.1, label %._crit_edge1756.us.us.1, label %.lr.ph1755.us.us.new.1, !llvm.loop !20

._crit_edge1756.us.us.1:                          ; preds = %.lr.ph1755.us.us.new.1, %.prol.loopexit3175.1
  %.lcssa3138.1 = phi double [ %.lcssa3138.unr.1, %.prol.loopexit3175.1 ], [ %i.age, %.lr.ph1755.us.us.new.1 ]
  %.lcssa3137.1 = phi double [ %.lcssa3137.unr.1, %.prol.loopexit3175.1 ], [ %i.agg, %.lr.ph1755.us.us.new.1 ]
  store double %.lcssa3138.1, ptr %i.aei, align 8, !tbaa !106
  store double %.lcssa3137.1, ptr %i.aej, align 8, !tbaa !106
  br label %._crit_edge1764.split.us.us

._crit_edge1764.split.us.us:                      ; preds = %._crit_edge1756.us.us.1, %._crit_edge1756.us.us
  %exitcond2063.not = icmp eq i64 %indvars.iv.next2059, %wide.trip.count2062
  br i1 %exitcond2063.not, label %.lr.ph1775, label %.lr.ph1763.us, !llvm.loop !21

.lr.ph1763:                                       ; preds = %.lr.ph1763, %.lr.ph1763.preheader.new
  %.113671766 = phi i32 [ 1, %.lr.ph1763.preheader.new ], [ %i.aha, %.lr.ph1763 ] ; 5 uses
  %niter3173 = phi i32 [ 0, %.lr.ph1763.preheader.new ], [ %niter3173.next.3, %.lr.ph1763 ]
  %i.agh = shl nuw i32 %.113671766, 1
  %i.agi = add nsw i32 %i.agh, -2
  %i.agj = sext i32 %i.agi to i64                 ; 2 uses
  %i.agk = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.agj
  call void @llvm.masked.store.v2f64.p0(<2 x double> zeroinitializer, ptr align 16 %i.agk, <2 x i1> %i.abj), !tbaa !106
  %i.agl = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.agj
  call void @llvm.masked.store.v2f64.p0(<2 x double> zeroinitializer, ptr align 16 %i.agl, <2 x i1> %i.abj), !tbaa !106
  %i.agm = shl nuw i32 %.113671766, 1
  %i.agn = sext i32 %i.agm to i64                 ; 2 uses
  %i.ago = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.agn
  call void @llvm.masked.store.v2f64.p0(<2 x double> zeroinitializer, ptr align 16 %i.ago, <2 x i1> %i.abl), !tbaa !106
  %i.agp = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.agn
  call void @llvm.masked.store.v2f64.p0(<2 x double> zeroinitializer, ptr align 16 %i.agp, <2 x i1> %i.abl), !tbaa !106
  %i.agq = shl nuw i32 %.113671766, 1
  %i.agr = add i32 %i.agq, 2
  %i.ags = sext i32 %i.agr to i64                 ; 2 uses
  %i.agt = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ags
  call void @llvm.masked.store.v2f64.p0(<2 x double> zeroinitializer, ptr align 16 %i.agt, <2 x i1> %i.abn), !tbaa !106
  %i.agu = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ags
  call void @llvm.masked.store.v2f64.p0(<2 x double> zeroinitializer, ptr align 16 %i.agu, <2 x i1> %i.abn), !tbaa !106
  %i.agv = shl nuw i32 %.113671766, 1
  %i.agw = add i32 %i.agv, 4
  %i.agx = sext i32 %i.agw to i64                 ; 2 uses
  %i.agy = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.agx
  call void @llvm.masked.store.v2f64.p0(<2 x double> zeroinitializer, ptr align 16 %i.agy, <2 x i1> %i.abp), !tbaa !106
  %i.agz = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.agx
  call void @llvm.masked.store.v2f64.p0(<2 x double> zeroinitializer, ptr align 16 %i.agz, <2 x i1> %i.abp), !tbaa !106
  %i.aha = add nuw nsw i32 %.113671766, 4         ; 2 uses
  %niter3173.next.3 = add nuw nsw i32 %niter3173, 4 ; 2 uses
  %niter3173.ncmp.3 = icmp eq i32 %niter3173.next.3, %unroll_iter3172
  br i1 %niter3173.ncmp.3, label %.lr.ph1775.loopexit3135.unr-lcssa, label %.lr.ph1763, !llvm.loop !21

.lr.ph1775.loopexit3135.unr-lcssa:                ; preds = %.lr.ph1763
  %lcmp.mod3170.not = icmp eq i32 %xtraiter3168, 0
  br i1 %lcmp.mod3170.not, label %.lr.ph1775, label %.lr.ph1763.epil.preheader

.lr.ph1763.epil.preheader:                        ; preds = %.lr.ph1775.loopexit3135.unr-lcssa, %.lr.ph1763.preheader
  %.113671766.epil.init = phi i32 [ 1, %.lr.ph1763.preheader ], [ %i.aha, %.lr.ph1775.loopexit3135.unr-lcssa ]
  %lcmp.mod3171 = icmp ne i32 %xtraiter3168, 0
  call void @llvm.assume(i1 %lcmp.mod3171)
  %i.ahb = zext nneg i32 %i.zg to i64
  %trip.count.minus.12669.epil = add nsw i64 %i.ahb, -1
  %broadcast.splatinsert2670.epil = insertelement <2 x i64> poison, i64 %trip.count.minus.12669.epil, i64 0
  %broadcast.splat2671.epil = shufflevector <2 x i64> %broadcast.splatinsert2670.epil, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ahc = icmp samesign uge <2 x i64> %broadcast.splat2671.epil, <i64 0, i64 1> ; 2 uses
  br label %.lr.ph1763.epil

.lr.ph1763.epil:                                  ; preds = %.lr.ph1763.epil, %.lr.ph1763.epil.preheader
  %.113671766.epil = phi i32 [ %i.ahi, %.lr.ph1763.epil ], [ %.113671766.epil.init, %.lr.ph1763.epil.preheader ] ; 2 uses
  %epil.iter3169 = phi i32 [ %epil.iter3169.next, %.lr.ph1763.epil ], [ 0, %.lr.ph1763.epil.preheader ]
  %i.ahd = shl nuw i32 %.113671766.epil, 1
  %i.ahe = add i32 %i.ahd, -2
  %i.ahf = sext i32 %i.ahe to i64                 ; 2 uses
  %i.ahg = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.ahf
  call void @llvm.masked.store.v2f64.p0(<2 x double> zeroinitializer, ptr align 16 %i.ahg, <2 x i1> %i.ahc), !tbaa !106
  %i.ahh = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ahf
  call void @llvm.masked.store.v2f64.p0(<2 x double> zeroinitializer, ptr align 16 %i.ahh, <2 x i1> %i.ahc), !tbaa !106
  %i.ahi = add nuw i32 %.113671766.epil, 1
  %epil.iter3169.next = add i32 %epil.iter3169, 1 ; 2 uses
  %epil.iter3169.cmp.not = icmp eq i32 %epil.iter3169.next, %xtraiter3168
  br i1 %epil.iter3169.cmp.not, label %.lr.ph1775, label %.lr.ph1763.epil, !llvm.loop !22

.lr.ph1775:                                       ; preds = %.lr.ph1775.loopexit3135.unr-lcssa, %.lr.ph1763.epil, %._crit_edge1764.split.us.us, %bb.cb
  store i32 %i.zg, ptr %i.f, align 4, !tbaa !104
  %i.ahj = load double, ptr %i.n, align 8
  %i.ahk = fneg double %i.ahj                     ; 2 uses
  %i.ahl = load double, ptr %i.s, align 8         ; 2 uses
  br i1 %.not1545161116261627, label %vector.body2647, label %vector.body2662

vector.body2662:                                  ; preds = %.lr.ph1775
  %i.ahm = load double, ptr %i.r, align 8         ; 2 uses
  %i.ahn = fneg double %i.ahm
  %broadcast.splatinsert2660 = insertelement <2 x double> poison, double %i.ahm, i64 0
  %broadcast.splat2661 = shufflevector <2 x double> %broadcast.splatinsert2660, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert2658 = insertelement <2 x double> poison, double %i.ahn, i64 0
  %broadcast.splat2659 = shufflevector <2 x double> %broadcast.splatinsert2658, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert2656 = insertelement <2 x double> poison, double %i.ahk, i64 0
  %broadcast.splat2657 = shufflevector <2 x double> %broadcast.splatinsert2656, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2654 = insertelement <2 x double> poison, double %i.ahl, i64 0
  %broadcast.splat2655 = shufflevector <2 x double> %broadcast.splatinsert2654, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aho = zext nneg i32 %i.zg to i64
  %trip.count.minus.12651 = add nsw i64 %i.aho, -1
  %broadcast.splatinsert2652 = insertelement <2 x i64> poison, i64 %trip.count.minus.12651, i64 0
  %broadcast.splat2653 = shufflevector <2 x i64> %broadcast.splatinsert2652, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ahp = icmp samesign uge <2 x i64> %broadcast.splat2653, <i64 0, i64 1> ; 2 uses
  %unmaskedload = load <2 x double>, ptr %i.k, align 16, !tbaa !106
  %unmaskedload3122 = load <2 x double>, ptr %i.j, align 16, !tbaa !106 ; 2 uses
  %i.ahq = fmul <2 x double> %broadcast.splat2655, %unmaskedload3122
  %i.ahr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2657, <2 x double> %unmaskedload, <2 x double> %i.ahq)
  %unmaskedload3123 = load <2 x double>, ptr %i.md, align 16, !tbaa !106 ; 2 uses
  %i.ahs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2659, <2 x double> %unmaskedload3123, <2 x double> %i.ahr)
  call void @llvm.masked.store.v2f64.p0(<2 x double> %i.ahs, ptr align 16 %i.w, <2 x i1> %i.ahp), !tbaa !106
  %unmaskedload3124 = load <2 x double>, ptr %i.me, align 16, !tbaa !106
  %i.aht = fmul <2 x double> %broadcast.splat2655, %unmaskedload3123
  %i.ahu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2657, <2 x double> %unmaskedload3124, <2 x double> %i.aht)
  %i.ahv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2661, <2 x double> %unmaskedload3122, <2 x double> %i.ahu)
  call void @llvm.masked.store.v2f64.p0(<2 x double> %i.ahv, ptr align 16 %i.mf, <2 x i1> %i.ahp), !tbaa !106
  br label %._crit_edge1776

vector.body2647:                                  ; preds = %.lr.ph1775
  %broadcast.splatinsert2645 = insertelement <2 x double> poison, double %i.ahk, i64 0
  %broadcast.splat2646 = shufflevector <2 x double> %broadcast.splatinsert2645, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert2643 = insertelement <2 x double> poison, double %i.ahl, i64 0
  %broadcast.splat2644 = shufflevector <2 x double> %broadcast.splatinsert2643, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ahw = zext nneg i32 %i.zg to i64
  %trip.count.minus.1 = add nsw i64 %i.ahw, -1
  %broadcast.splatinsert2641 = insertelement <2 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat2642 = shufflevector <2 x i64> %broadcast.splatinsert2641, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ahx = icmp samesign uge <2 x i64> %broadcast.splat2642, <i64 0, i64 1>
  %unmaskedload3125 = load <2 x double>, ptr %i.k, align 16, !tbaa !106
  %unmaskedload3126 = load <2 x double>, ptr %i.j, align 16, !tbaa !106
  %i.ahy = fmul <2 x double> %broadcast.splat2644, %unmaskedload3126
  %i.ahz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2646, <2 x double> %unmaskedload3125, <2 x double> %i.ahy)
  call void @llvm.masked.store.v2f64.p0(<2 x double> %i.ahz, ptr align 16 %i.w, <2 x i1> %i.ahx), !tbaa !106
  br label %._crit_edge1776

._crit_edge1776:                                  ; preds = %vector.body2662, %vector.body2647
  %i.aia = mul i32 %i.ln, %i.yn
  %i.aib = sext i32 %i.aia to i64
  %i.aic = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.aib
  %i.aid = shl i32 %i.ys, 1
  %i.aie = sext i32 %i.aid to i64
  %i.aif = getelementptr [8 x i8], ptr %i.ak, i64 %indvars.iv2088
  %i.aig = getelementptr [8 x i8], ptr %i.aif, i64 %i.aie
  call void @dlaln2_(ptr noundef nonnull @c_true, ptr noundef nonnull %i.q, ptr noundef nonnull %i.t, ptr noundef nonnull %i.h, ptr noundef nonnull %i.n, ptr noundef nonnull %i.aic, ptr noundef nonnull %5, ptr noundef nonnull %i.m, ptr noundef nonnull %i.lq, ptr noundef nonnull %i.w, ptr noundef nonnull @c__2, ptr noundef nonnull %i.s, ptr noundef nonnull %i.r, ptr noundef nonnull %i.aig, ptr noundef nonnull %3, ptr noundef nonnull %i.o, ptr noundef nonnull %i.i, ptr noundef nonnull %i.p) #6
  %i.aih = load double, ptr %i.o, align 8, !tbaa !106 ; 5 uses
  %i.aii = fcmp olt double %i.aih, 1.000000e+00
  br i1 %i.aii, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %._crit_edge1776
  %i.aij = load i32, ptr %i.t, align 4, !tbaa !104 ; 3 uses
  %i.aik = add nsw i32 %i.aij, -1
  store i32 %i.aik, ptr %i.f, align 4, !tbaa !104
  %.not1564.not1781 = icmp sgt i32 %i.aij, 0
  %.not1565.not1777 = icmp slt i64 %indvars.iv2025, %indvars.iv2088
  %or.cond1964 = and i1 %.not1564.not1781, %.not1565.not1777
  br i1 %or.cond1964, label %.preheader1683.lr.ph.split, label %._crit_edge1783.split

.preheader1683.lr.ph.split:                       ; preds = %bb.cc
  %i.ail = load i32, ptr %3, align 4, !tbaa !104
  %i.aim = sext i32 %i.ail to i64
  %wide.trip.count2086 = zext nneg i32 %i.aij to i64
  %wide.trip.count2080 = and i64 %indvars.iv2088, 4294967295
  %min.iters.check2608 = icmp ult i64 %i.ym, 4
  %min.iters.check2610 = icmp ult i64 %i.ym, 16
  %i.ain = and i64 %i.ym, 12
  %n.vec2612 = and i64 %i.ym, -16                 ; 4 uses
  %i.aio = add i64 %indvars.iv2025, %n.vec2612
  %broadcast.splatinsert2613 = insertelement <4 x double> poison, double %i.aih, i64 0
  %broadcast.splat2614 = shufflevector <4 x double> %broadcast.splatinsert2613, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %cmp.n2623 = icmp eq i64 %i.ym, %n.vec2612
  %min.epilog.iters.check2628 = icmp eq i64 %i.ain, 0
  %n.vec2630 = and i64 %i.ym, -4                  ; 3 uses
  %i.aip = add i64 %indvars.iv2025, %n.vec2630
  %broadcast.splatinsert2631 = insertelement <4 x double> poison, double %i.aih, i64 0
  %broadcast.splat2632 = shufflevector <4 x double> %broadcast.splatinsert2631, <4 x double> poison, <4 x i32> zeroinitializer
  %cmp.n2638 = icmp eq i64 %i.ym, %n.vec2630
  br label %iter.check2625

iter.check2625:                                   ; preds = %.preheader1683.lr.ph.split, %._crit_edge1780
  %indvars.iv2082 = phi i64 [ 0, %.preheader1683.lr.ph.split ], [ %indvars.iv.next2083, %._crit_edge1780 ] ; 2 uses
  %i.aiq = add nuw nsw i64 %indvars.iv2082, 2
  %i.air = mul nsw i64 %i.aiq, %i.aim
  %i.ais = getelementptr [8 x i8], ptr %i.ak, i64 %i.air ; 3 uses
  br i1 %min.iters.check2608, label %vec.epilog.scalar.ph2626.preheader, label %vector.main.loop.iter.check2609

vector.main.loop.iter.check2609:                  ; preds = %iter.check2625
  br i1 %min.iters.check2610, label %vec.epilog.ph2629, label %vector.ph2611

vector.ph2611:                                    ; preds = %vector.main.loop.iter.check2609
  %i.ait = getelementptr [8 x i8], ptr %i.ais, i64 %indvars.iv2025
  br label %vector.body2615

vector.body2615:                                  ; preds = %vector.body2615, %vector.ph2611
  %index2616 = phi i64 [ 0, %vector.ph2611 ], [ %index.next2621, %vector.body2615 ] ; 2 uses
  %i.aiu = getelementptr [8 x i8], ptr %i.ait, i64 %index2616 ; 5 uses
  %i.aiv = getelementptr i8, ptr %i.aiu, i64 32   ; 2 uses
  %i.aiw = getelementptr i8, ptr %i.aiu, i64 64   ; 2 uses
  %i.aix = getelementptr i8, ptr %i.aiu, i64 96   ; 2 uses
  %wide.load2617 = load <4 x double>, ptr %i.aiu, align 8, !tbaa !106
  %wide.load2618 = load <4 x double>, ptr %i.aiv, align 8, !tbaa !106
  %wide.load2619 = load <4 x double>, ptr %i.aiw, align 8, !tbaa !106
  %wide.load2620 = load <4 x double>, ptr %i.aix, align 8, !tbaa !106
  %i.aiy = fmul <4 x double> %broadcast.splat2614, %wide.load2617
  %i.aiz = fmul <4 x double> %broadcast.splat2614, %wide.load2618
  %i.aja = fmul <4 x double> %broadcast.splat2614, %wide.load2619
  %i.ajb = fmul <4 x double> %broadcast.splat2614, %wide.load2620
  store <4 x double> %i.aiy, ptr %i.aiu, align 8, !tbaa !106
  store <4 x double> %i.aiz, ptr %i.aiv, align 8, !tbaa !106
  store <4 x double> %i.aja, ptr %i.aiw, align 8, !tbaa !106
  store <4 x double> %i.ajb, ptr %i.aix, align 8, !tbaa !106
  %index.next2621 = add nuw i64 %index2616, 16    ; 2 uses
  %i.ajc = icmp eq i64 %index.next2621, %n.vec2612
  br i1 %i.ajc, label %middle.block2622, label %vector.body2615, !llvm.loop !23

middle.block2622:                                 ; preds = %vector.body2615
  br i1 %cmp.n2623, label %._crit_edge1780, label %vec.epilog.iter.check2627

vec.epilog.iter.check2627:                        ; preds = %middle.block2622
  br i1 %min.epilog.iters.check2628, label %vec.epilog.scalar.ph2626.preheader, label %vec.epilog.ph2629, !prof !111

vec.epilog.ph2629:                                ; preds = %vector.main.loop.iter.check2609, %vec.epilog.iter.check2627
  %vec.epilog.resume.val2624 = phi i64 [ %n.vec2612, %vec.epilog.iter.check2627 ], [ 0, %vector.main.loop.iter.check2609 ]
  %i.ajd = getelementptr [8 x i8], ptr %i.ais, i64 %indvars.iv2025
  br label %vec.epilog.vector.body2633

vec.epilog.vector.body2633:                       ; preds = %vec.epilog.vector.body2633, %vec.epilog.ph2629
  %index2634 = phi i64 [ %vec.epilog.resume.val2624, %vec.epilog.ph2629 ], [ %index.next2636, %vec.epilog.vector.body2633 ] ; 2 uses
  %i.aje = getelementptr [8 x i8], ptr %i.ajd, i64 %index2634 ; 2 uses
  %wide.load2635 = load <4 x double>, ptr %i.aje, align 8, !tbaa !106
  %i.ajf = fmul <4 x double> %broadcast.splat2632, %wide.load2635
  store <4 x double> %i.ajf, ptr %i.aje, align 8, !tbaa !106
  %index.next2636 = add nuw i64 %index2634, 4     ; 2 uses
  %i.ajg = icmp eq i64 %index.next2636, %n.vec2630
  br i1 %i.ajg, label %vec.epilog.middle.block2637, label %vec.epilog.vector.body2633, !llvm.loop !24

vec.epilog.middle.block2637:                      ; preds = %vec.epilog.vector.body2633
  br i1 %cmp.n2638, label %._crit_edge1780, label %vec.epilog.scalar.ph2626.preheader

vec.epilog.scalar.ph2626.preheader:               ; preds = %iter.check2625, %vec.epilog.iter.check2627, %vec.epilog.middle.block2637
  %indvars.iv2076.ph = phi i64 [ %indvars.iv2025, %iter.check2625 ], [ %i.aio, %vec.epilog.iter.check2627 ], [ %i.aip, %vec.epilog.middle.block2637 ]
  br label %vec.epilog.scalar.ph2626

vec.epilog.scalar.ph2626:                         ; preds = %vec.epilog.scalar.ph2626.preheader, %vec.epilog.scalar.ph2626
  %indvars.iv2076 = phi i64 [ %indvars.iv.next2077, %vec.epilog.scalar.ph2626 ], [ %indvars.iv2076.ph, %vec.epilog.scalar.ph2626.preheader ] ; 2 uses
  %i.ajh = getelementptr [8 x i8], ptr %i.ais, i64 %indvars.iv2076 ; 2 uses
  %i.aji = load double, ptr %i.ajh, align 8, !tbaa !106
  %i.ajj = fmul double %i.aih, %i.aji
  store double %i.ajj, ptr %i.ajh, align 8, !tbaa !106
  %indvars.iv.next2077 = add nuw nsw i64 %indvars.iv2076, 1 ; 2 uses
  %exitcond2081.not = icmp eq i64 %indvars.iv.next2077, %wide.trip.count2080
  br i1 %exitcond2081.not, label %._crit_edge1780, label %vec.epilog.scalar.ph2626, !llvm.loop !25

._crit_edge1780:                                  ; preds = %vec.epilog.scalar.ph2626, %vec.epilog.middle.block2637, %middle.block2622
  %indvars.iv.next2083 = add nuw nsw i64 %indvars.iv2082, 1 ; 2 uses
  %exitcond2087.not = icmp eq i64 %indvars.iv.next2083, %wide.trip.count2086
  br i1 %exitcond2087.not, label %._crit_edge1783.split, label %iter.check2625, !llvm.loop !26

._crit_edge1783.split:                            ; preds = %._crit_edge1780, %bb.cc
  %i.ajk = fmul double %.21437, %i.aih
  br label %bb.cd

bb.cd:                                            ; preds = %._crit_edge1783.split, %._crit_edge1776
  %.31438 = phi double [ %i.ajk, %._crit_edge1783.split ], [ %.21437, %._crit_edge1776 ] ; 2 uses
  %i.ajl = load double, ptr %i.i, align 8, !tbaa !106 ; 2 uses
  %i.ajm = fcmp oge double %.31438, %i.ajl
  %i.ajn = select i1 %i.ajm, double %.31438, double %i.ajl
  br label %bb.ce

bb.ce:                                            ; preds = %.lr.ph1792, %bb.cd
  %.41439 = phi double [ %i.ajn, %bb.cd ], [ %.114361785, %.lr.ph1792 ]
  %.21419 = phi i32 [ %.11418, %bb.cd ], [ 0, %.lr.ph1792 ]
  %indvars.iv.next2089 = add nsw i64 %indvars.iv2088, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next2089 to i32
  %exitcond2092.not = icmp eq i32 %i.ye, %lftr.wideiv
  %indvar.next2607 = add i32 %indvar2606, 1
  br i1 %exitcond2092.not, label %._crit_edge1793, label %.lr.ph1792, !llvm.loop !27

._crit_edge1793:                                  ; preds = %bb.ce, %bb.bt
  %i.ajo = add nsw i32 %.014531823, 1             ; 4 uses
  br i1 %.not1520, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %._crit_edge1793
  %i.ajp = load i32, ptr %i.t, align 4, !tbaa !104 ; 2 uses
  %.not1554.not1794 = icmp sgt i32 %i.ajp, 0
  %i.ajq = mul nsw i64 %indvars.iv2025, %i.lt     ; 2 uses
  br i1 %.not1554.not1794, label %.lr.ph1797, label %._crit_edge1798

.lr.ph1797:                                       ; preds = %bb.cf
  %i.ajr = getelementptr [8 x i8], ptr %i.ag, i64 %i.ajq
  %i.ajs = getelementptr i8, ptr %i.ajr, i64 8
  %i.ajt = getelementptr [8 x i8], ptr %i.ak, i64 %indvars.iv2025
  %invariant.op3286 = sub i32 1, %indvars2119
  br label %bb.cg

bb.cg:                                            ; preds = %.lr.ph1797, %bb.cg
  %.313691795 = phi i32 [ 0, %.lr.ph1797 ], [ %i.ake, %bb.cg ] ; 3 uses
  %i.aju = load i32, ptr %3, align 4, !tbaa !104  ; 3 uses
  %.reass2474.reass = add i32 %i.aju, %invariant.op3286
  store i32 %.reass2474.reass, ptr %i.f, align 4, !tbaa !104
  %i.ajv = add nuw nsw i32 %.313691795, 2
  %i.ajw = mul nsw i32 %i.aju, %i.ajv
  %i.ajx = sext i32 %i.ajw to i64
  %i.ajy = getelementptr [8 x i8], ptr %i.ajt, i64 %i.ajx
  %i.ajz = add nuw nsw i32 %.313691795, 4
  %i.aka = mul nsw i32 %i.aju, %i.ajz
  %i.akb = sext i32 %i.aka to i64
  %i.akc = getelementptr [8 x i8], ptr %i.ak, i64 %i.akb
  %i.akd = getelementptr i8, ptr %i.akc, i64 8
  call void @dgemv_(ptr noundef nonnull @.str.9, ptr noundef nonnull %3, ptr noundef nonnull %i.f, ptr noundef nonnull @c_b34, ptr noundef %i.ajs, ptr noundef nonnull %9, ptr noundef nonnull %i.ajy, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b36, ptr noundef %i.akd, ptr noundef nonnull @c__1) #6
  %i.ake = add nuw nsw i32 %.313691795, 1         ; 2 uses
  %exitcond2093.not = icmp eq i32 %i.ake, %i.ajp
  br i1 %exitcond2093.not, label %._crit_edge1798, label %bb.cg, !llvm.loop !28

._crit_edge1798:                                  ; preds = %bb.cg, %bb.cf
  %i.akf = load i32, ptr %3, align 4, !tbaa !104
  %i.akg = shl i32 %i.akf, 2
  br label %bb.ci

bb.ch:                                            ; preds = %._crit_edge1793
  %i.akh = load i32, ptr %3, align 4, !tbaa !104
  %i.aki = shl i32 %i.akh, 1
  %i.akj = mul nsw i32 %i.ajo, %i.ae
  %i.akk = sext i32 %i.akj to i64
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %._crit_edge1798
  %.sink2551 = phi i64 [ %i.akk, %bb.ch ], [ %i.ajq, %._crit_edge1798 ]
  %.pn2566.in = phi i32 [ %i.aki, %bb.ch ], [ %i.akg, %._crit_edge1798 ]
end_hunk_0
begin_hunk_1_@dtgevc_:bb.a

.lr.ph1810.new:                                   ; preds = %.prol.loopexit3191, %.lr.ph1810.new
  %indvars.iv2100 = phi i64 [ %indvars.iv.next2101.3, %.lr.ph1810.new ], [ %indvars.iv2100.unr, %.prol.loopexit3191 ] ; 5 uses
  %.614411807 = phi double [ %i.aoo, %.lr.ph1810.new ], [ %.614411807.unr, %.prol.loopexit3191 ] ; 2 uses
  %gep2480 = getelementptr [8 x i8], ptr %invariant.gep2479, i64 %indvars.iv2100
  %i.ano = load double, ptr %gep2480, align 8, !tbaa !106 ; 3 uses
  %i.anp = fcmp oge double %i.ano, 0.000000e+00
  %i.anq = fneg double %i.ano
  %i.anr = select i1 %i.anp, double %i.ano, double %i.anq ; 2 uses
  %i.ans = fcmp oge double %.614411807, %i.anr
  %i.ant = select i1 %i.ans, double %.614411807, double %i.anr ; 2 uses
  %i.anu = getelementptr [8 x i8], ptr %invariant.gep2479, i64 %indvars.iv2100
  %gep2480.1 = getelementptr i8, ptr %i.anu, i64 8
  %i.anv = load double, ptr %gep2480.1, align 8, !tbaa !106 ; 3 uses
  %i.anw = fcmp oge double %i.anv, 0.000000e+00
  %i.anx = fneg double %i.anv
  %i.any = select i1 %i.anw, double %i.anv, double %i.anx ; 2 uses
  %i.anz = fcmp oge double %i.ant, %i.any
  %i.aoa = select i1 %i.anz, double %i.ant, double %i.any ; 2 uses
  %i.aob = getelementptr [8 x i8], ptr %invariant.gep2479, i64 %indvars.iv2100
  %gep2480.2 = getelementptr i8, ptr %i.aob, i64 16
  %i.aoc = load double, ptr %gep2480.2, align 8, !tbaa !106 ; 3 uses
  %i.aod = fcmp oge double %i.aoc, 0.000000e+00
  %i.aoe = fneg double %i.aoc
  %i.aof = select i1 %i.aod, double %i.aoc, double %i.aoe ; 2 uses
  %i.aog = fcmp oge double %i.aoa, %i.aof
  %i.aoh = select i1 %i.aog, double %i.aoa, double %i.aof ; 2 uses
  %i.aoi = getelementptr [8 x i8], ptr %invariant.gep2479, i64 %indvars.iv2100
  %gep2480.3 = getelementptr i8, ptr %i.aoi, i64 24
  %i.aoj = load double, ptr %gep2480.3, align 8, !tbaa !106 ; 4 uses
  %i.aok = fcmp oge double %i.aoj, 0.000000e+00
  %i.aol = fneg double %i.aoj
  %i.aom = select i1 %i.aok, double %i.aoj, double %i.aol ; 2 uses
  %i.aon = fcmp oge double %i.aoh, %i.aom
  %i.aoo = select i1 %i.aon, double %i.aoh, double %i.aom ; 2 uses
  %indvars.iv.next2101.3 = add nuw nsw i64 %indvars.iv2100, 4 ; 2 uses
  %exitcond2105.not.3 = icmp eq i64 %indvars.iv.next2101.3, %wide.trip.count2104
  br i1 %exitcond2105.not.3, label %.loopexit1686.sink.split, label %.lr.ph1810.new, !llvm.loop !32

.loopexit1686.sink.split:                         ; preds = %.prol.loopexit3186, %.lr.ph1803.new, %.prol.loopexit3191, %.lr.ph1810.new
  %.lcssa2444.sink = phi double [ %i.aoj, %.lr.ph1810.new ], [ %.lcssa3142.unr, %.prol.loopexit3191 ], [ %.lcssa3140.unr, %.prol.loopexit3186 ], [ %i.amq, %.lr.ph1803.new ]
  %.71442.ph = phi double [ %i.aoo, %.lr.ph1810.new ], [ %.lcssa3141.unr, %.prol.loopexit3191 ], [ %.lcssa3139.unr, %.prol.loopexit3186 ], [ %i.ana, %.lr.ph1803.new ]
  store double %.lcssa2444.sink, ptr %i.g, align 8, !tbaa !106
  br label %.loopexit1686

.loopexit1686:                                    ; preds = %.loopexit1686.sink.split, %bb.cj, %bb.ck
  %.71442 = phi double [ 0.000000e+00, %bb.ck ], [ 0.000000e+00, %bb.cj ], [ %.71442.ph, %.loopexit1686.sink.split ] ; 2 uses
  %i.aop = load double, ptr %i.u, align 8, !tbaa !106 ; 2 uses
  %i.aoq = fcmp ogt double %.71442, %i.aop
  %.pre2305 = load i32, ptr %i.t, align 4, !tbaa !104 ; 3 uses
  br i1 %i.aoq, label %bb.cl, label %.loopexit1685

bb.cl:                                            ; preds = %.loopexit1686
  %i.aor = fdiv double 1.000000e+00, %.71442      ; 3 uses
  %.not1557.not1818 = icmp sgt i32 %.pre2305, 0
  br i1 %.not1557.not1818, label %.lr.ph1821, label %.loopexit1685

.lr.ph1821:                                       ; preds = %bb.cl
  store i32 %i.akn, ptr %i.f, align 4, !tbaa !104
  %.not15581813 = icmp sgt i32 %.01457, %i.akn
  br i1 %.not15581813, label %.loopexit1685, label %.lr.ph1816.preheader

.lr.ph1816.preheader:                             ; preds = %.lr.ph1821
  %i.aos = zext i32 %.01457 to i64                ; 6 uses
  %i.aot = add i32 %i.akn, 1
  %i.aou = sext i32 %i.ajo to i64
  %wide.trip.count2116 = zext nneg i32 %.pre2305 to i64
  %wide.trip.count2110 = zext i32 %i.aot to i64   ; 2 uses
  %i.aov = sub nsw i64 %wide.trip.count2110, %i.aos ; 7 uses
  %min.iters.check = icmp ult i64 %i.aov, 4
  %min.iters.check2594 = icmp ult i64 %i.aov, 16
  %i.aow = and i64 %i.aov, 12
  %n.vec = and i64 %i.aov, -16                    ; 4 uses
  %i.aox = add nsw i64 %n.vec, %i.aos
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.aor, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %cmp.n = icmp eq i64 %i.aov, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.aow, 0
  %n.vec2598 = and i64 %i.aov, -4                 ; 3 uses
  %i.aoy = add nsw i64 %n.vec2598, %i.aos
  %broadcast.splatinsert2599 = insertelement <4 x double> poison, double %i.aor, i64 0
  %broadcast.splat2600 = shufflevector <4 x double> %broadcast.splatinsert2599, <4 x double> poison, <4 x i32> zeroinitializer
  %cmp.n2604 = icmp eq i64 %i.aov, %n.vec2598
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph1816.preheader, %._crit_edge1817
  %indvars.iv2112 = phi i64 [ 0, %.lr.ph1816.preheader ], [ %indvars.iv.next2113, %._crit_edge1817 ] ; 2 uses
  %i.aoz = add nsw i64 %indvars.iv2112, %i.aou
  %i.apa = mul nsw i64 %i.aoz, %i.lt
  %invariant.gep2481 = getelementptr [8 x i8], ptr %i.ag, i64 %i.apa ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check2594, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %invariant.gep3287 = getelementptr [8 x i8], ptr %invariant.gep2481, i64 %i.aos
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep3288 = getelementptr [8 x i8], ptr %invariant.gep3287, i64 %index ; 5 uses
  %i.apb = getelementptr i8, ptr %gep3288, i64 32 ; 2 uses
  %i.apc = getelementptr i8, ptr %gep3288, i64 64 ; 2 uses
  %i.apd = getelementptr i8, ptr %gep3288, i64 96 ; 2 uses
  %wide.load = load <4 x double>, ptr %gep3288, align 8, !tbaa !106
  %wide.load2595 = load <4 x double>, ptr %i.apb, align 8, !tbaa !106
  %wide.load2596 = load <4 x double>, ptr %i.apc, align 8, !tbaa !106
  %wide.load2597 = load <4 x double>, ptr %i.apd, align 8, !tbaa !106
  %i.ape = fmul <4 x double> %broadcast.splat, %wide.load
  %i.apf = fmul <4 x double> %broadcast.splat, %wide.load2595
  %i.apg = fmul <4 x double> %broadcast.splat, %wide.load2596
  %i.aph = fmul <4 x double> %broadcast.splat, %wide.load2597
  store <4 x double> %i.ape, ptr %gep3288, align 8, !tbaa !106
  store <4 x double> %i.apf, ptr %i.apb, align 8, !tbaa !106
  store <4 x double> %i.apg, ptr %i.apc, align 8, !tbaa !106
  store <4 x double> %i.aph, ptr %i.apd, align 8, !tbaa !106
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.api = icmp eq i64 %index.next, %n.vec
  br i1 %i.api, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge1817, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !111

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %invariant.gep3289 = getelementptr [8 x i8], ptr %invariant.gep2481, i64 %i.aos
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index2601 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next2603, %vec.epilog.vector.body ] ; 2 uses
  %gep3290 = getelementptr [8 x i8], ptr %invariant.gep3289, i64 %index2601 ; 2 uses
  %wide.load2602 = load <4 x double>, ptr %gep3290, align 8, !tbaa !106
  %i.apj = fmul <4 x double> %broadcast.splat2600, %wide.load2602
  store <4 x double> %i.apj, ptr %gep3290, align 8, !tbaa !106
  %index.next2603 = add nuw i64 %index2601, 4     ; 2 uses
  %i.apk = icmp eq i64 %index.next2603, %n.vec2598
  br i1 %i.apk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !34

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n2604, label %._crit_edge1817, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv2106.ph = phi i64 [ %i.aos, %iter.check ], [ %i.aox, %vec.epilog.iter.check ], [ %i.aoy, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv2106 = phi i64 [ %indvars.iv.next2107, %vec.epilog.scalar.ph ], [ %indvars.iv2106.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %gep2482 = getelementptr [8 x i8], ptr %invariant.gep2481, i64 %indvars.iv2106 ; 2 uses
  %i.apl = load double, ptr %gep2482, align 8, !tbaa !106
  %i.apm = fmul double %i.aor, %i.apl
  store double %i.apm, ptr %gep2482, align 8, !tbaa !106
  %indvars.iv.next2107 = add nuw nsw i64 %indvars.iv2106, 1 ; 2 uses
  %exitcond2111.not = icmp eq i64 %indvars.iv.next2107, %wide.trip.count2110
  br i1 %exitcond2111.not, label %._crit_edge1817, label %vec.epilog.scalar.ph, !llvm.loop !35

._crit_edge1817:                                  ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next2113 = add nuw nsw i64 %indvars.iv2112, 1 ; 2 uses
  %exitcond2117.not = icmp eq i64 %indvars.iv.next2113, %wide.trip.count2116
  br i1 %exitcond2117.not, label %.loopexit1685, label %iter.check, !llvm.loop !36

.loopexit1685:                                    ; preds = %._crit_edge1817, %bb.cl, %.lr.ph1821, %.loopexit1686
  %i.apn = add i32 %.pre2305, %.014531823
  %.pre2306 = load i32, ptr %i.e, align 4, !tbaa !104
  br label %bb.cm

bb.cm:                                            ; preds = %.thread2403, %bb.av, %._crit_edge1740, %.loopexit1685, %bb.ba
  %i.apo = phi i32 [ %i.mg, %bb.ba ], [ %.pre2306, %.loopexit1685 ], [ %i.mg, %._crit_edge1740 ], [ %i.mg, %bb.av ], [ %i.mg, %.thread2403 ] ; 2 uses
  %i.app = phi double [ %i.mh, %bb.ba ], [ %i.aop, %.loopexit1685 ], [ %i.mh, %._crit_edge1740 ], [ %i.mh, %bb.av ], [ %i.mh, %.thread2403 ] ; 2 uses
  %i.apq = phi i32 [ %i.mi, %bb.ba ], [ %i.akn, %.loopexit1685 ], [ %i.mi, %._crit_edge1740 ], [ %i.mi, %bb.av ], [ %i.mi, %.thread2403 ] ; 2 uses
  %.11454 = phi i32 [ %.014531823, %bb.ba ], [ %i.apn, %.loopexit1685 ], [ %i.nj, %._crit_edge1740 ], [ %.014531823, %bb.av ], [ %.014531823, %.thread2403 ]
  %.5 = phi i32 [ 0, %bb.ba ], [ %.4161216251629, %.loopexit1685 ], [ 0, %._crit_edge1740 ], [ 0, %bb.av ], [ 1, %.thread2403 ]
  %indvars.iv.next2026 = add nuw nsw i64 %indvars.iv2025, 1
  %i.apr = sext i32 %i.apo to i64
  %.not1508.not = icmp slt i64 %indvars.iv2025, %i.apr
  %indvar.next = add i64 %indvar, 1
  br i1 %.not1508.not, label %bb.av, label %.loopexit1688, !llvm.loop !37

.loopexit1688:                                    ; preds = %bb.cm, %bb.au, %bb.at
  %i.aps = phi double [ %i.eu, %bb.at ], [ %i.eu, %bb.au ], [ %i.app, %bb.cm ]
  %i.apt = phi i32 [ %i.ev, %bb.at ], [ %i.ev, %bb.au ], [ %i.apq, %bb.cm ] ; 5 uses
  %i.apu = icmp sgt i32 %i.apt, 0
  %or.cond2553 = select i1 %.not15021589, i1 %i.apu, i1 false
  br i1 %or.cond2553, label %.lr.ph1963, label %.loopexit1682

.lr.ph1963:                                       ; preds = %.loopexit1688
  %i.apv = add nsw i32 %.21390239323972402, 1
  %i.apw = add i32 %i.y, 1                        ; 2 uses
  %i.apx = add i32 %i.ab, 1                       ; 4 uses
  %i.apy = add i32 %i.ah, 1
  %i.apz = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.aqa = shl nsw i64 %i.ai, 3
  %scevgep2120 = getelementptr i8, ptr %10, i64 %i.aqa
  %i.aqb = add nsw i32 %i.apt, -1
  %i.aqc = add nuw i32 %i.apt, 1
  %i.aqd = sext i32 %i.ah to i64                  ; 2 uses
  %i.aqe = zext i32 %i.aqc to i64
  %i.aqf = zext nneg i32 %i.aqb to i64            ; 3 uses
  %i.aqg = zext nneg i32 %i.apt to i64            ; 7 uses
  %i.aqh = sext i32 %i.ab to i64                  ; 9 uses
  %i.aqi = sext i32 %i.y to i64                   ; 9 uses
  %invariant.gep2519 = getelementptr [8 x i8], ptr %i.aj, i64 %i.aqd ; 9 uses
  %i.aqj = shl nsw i64 %i.ai, 3                   ; 2 uses
  %i.aqk = add i64 %i.aqj, %i.d
  %i.aql = add i64 %i.aqk, 8
  %i.aqm = add i64 %i.aqj, %i.d
  %i.aqn = add i64 %i.aqm, 8
  %i.aqo = shl nsw i64 %i.z, 3                    ; 2 uses
  %i.aqp = getelementptr i8, ptr %4, i64 %i.aqo
  %scevgep2802 = getelementptr i8, ptr %i.aqp, i64 8
  %i.aqq = shl nsw i64 %i.ac, 3                   ; 2 uses
  %i.aqr = getelementptr i8, ptr %6, i64 %i.aqq
  %scevgep2808 = getelementptr i8, ptr %i.aqr, i64 8
  %i.aqs = shl nsw i64 %i.z, 3                    ; 2 uses
  %i.aqt = getelementptr i8, ptr %4, i64 %i.aqs
  %scevgep2837 = getelementptr i8, ptr %i.aqt, i64 8
  %i.aqu = shl nsw i64 %i.ac, 3                   ; 2 uses
  %i.aqv = getelementptr i8, ptr %6, i64 %i.aqu
  %scevgep2843 = getelementptr i8, ptr %i.aqv, i64 8
  %i.aqw = zext nneg i32 %i.apt to i64
  %i.aqx = add i64 %i.c, -8
  %i.aqy = mul nsw i64 %i.aqh, %i.aqg
  %i.aqz = add i64 %i.aqy, %i.ac
  %i.ara = shl i64 %i.aqz, 3
  %i.arb = add i64 %i.ara, %i.b
  %i.arc = sub i64 %i.aqx, %i.arb
  %i.ard = shl nsw i64 %i.aqh, 3
  %i.are = add i64 %i.c, -8
  %i.arf = mul nsw i64 %i.aqi, %i.aqg
  %i.arg = add i64 %i.arf, %i.z
  %i.arh = shl i64 %i.arg, 3
  %i.ari = add i64 %i.arh, %i.a
  %i.arj = sub i64 %i.are, %i.ari
  %i.ark = shl nsw i64 %i.aqi, 3
  %i.arl = shl nuw nsw i64 %i.aqf, 3              ; 5 uses
  %i.arm = add nsw i64 %i.arl, -8
  %i.arn = mul nsw i64 %i.aqi, %i.aqg
  %i.aro = add i64 %i.arn, %i.z
  %i.arp = shl i64 %i.aro, 3                      ; 2 uses
  %i.arq = mul nsw i64 %i.aqi, -8
  %i.arr = shl nsw i64 %i.aqi, 3
  %i.ars = sub nuw nsw i64 -8, %i.arr
  %i.art = add nsw i64 %i.aqg, -1                 ; 2 uses
  %i.aru = mul nsw i64 %i.art, %i.aqi
  %i.arv = add i64 %i.aru, %i.z
  %i.arw = shl i64 %i.arv, 3                      ; 2 uses
  %i.arx = mul nsw i64 %i.aqh, %i.aqg
  %i.ary = add i64 %i.arx, %i.ac
  %i.arz = shl i64 %i.ary, 3                      ; 2 uses
  %i.asa = mul nsw i64 %i.aqh, -8
  %i.asb = shl nsw i64 %i.aqh, 3
  %i.asc = sub nuw nsw i64 -8, %i.asb
  %i.asd = mul nsw i64 %i.art, %i.aqh
  %i.ase = add i64 %i.asd, %i.ac
  %i.asf = shl i64 %i.ase, 3                      ; 2 uses
  %i.asg = shufflevector <2 x double> %i.lm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ash = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> zeroinitializer
  %i.asi = extractelement <2 x double> %i.lm, i64 0 ; 3 uses
  %i.asj = extractelement <2 x double> %i.lm, i64 1 ; 3 uses
  %i.ask = insertelement <2 x double> poison, double %.11415.lcssa, i64 0
  %i.asl = insertelement <2 x double> %i.ask, double %.01413.lcssa, i64 1
  %i.asm = insertelement <2 x double> poison, double %i.et, i64 0
  %i.asn = shufflevector <2 x double> %i.asm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aso = getelementptr i8, ptr %4, i64 %i.arp
  %i.asp = getelementptr i8, ptr %i.aso, i64 8
  %i.asq = getelementptr i8, ptr %4, i64 %i.arp
  %i.asr = getelementptr i8, ptr %i.asq, i64 %i.arl
  %i.ass = getelementptr i8, ptr %4, i64 %i.arw
  %i.ast = getelementptr i8, ptr %i.ass, i64 8
  %i.asu = getelementptr i8, ptr %4, i64 %i.arw
  %i.asv = getelementptr i8, ptr %i.asu, i64 %i.arl
  %i.asw = getelementptr i8, ptr %6, i64 %i.arz
  %i.asx = getelementptr i8, ptr %i.asw, i64 8
  %i.asy = getelementptr i8, ptr %6, i64 %i.arz
  %i.asz = getelementptr i8, ptr %i.asy, i64 %i.arl
  %i.ata = getelementptr i8, ptr %6, i64 %i.asf
  %i.atb = getelementptr i8, ptr %i.ata, i64 8
  %i.atc = getelementptr i8, ptr %6, i64 %i.asf
  %i.atd = getelementptr i8, ptr %i.atc, i64 %i.arl
  %i.ate = extractelement <2 x double> %i.fb, i64 1
  %i.atf = getelementptr i8, ptr %4, i64 %i.aqs
  %i.atg = getelementptr i8, ptr %6, i64 %i.aqu
  %i.ath = getelementptr i8, ptr %4, i64 %i.aqo
  %i.ati = getelementptr i8, ptr %6, i64 %i.aqq
  br label %bb.cn

bb.cn:                                            ; preds = %.lr.ph1963, %.loopexit1676
  %indvar2890 = phi i64 [ 0, %.lr.ph1963 ], [ %indvar.next2891, %.loopexit1676 ] ; 11 uses
  %i.atj = phi double [ %i.aps, %.lr.ph1963 ], [ %i.clg, %.loopexit1676 ] ; 16 uses
  %indvars.iv2292 = phi i64 [ %i.aqg, %.lr.ph1963 ], [ %indvars.iv.next2293, %.loopexit1676 ] ; 28 uses
  %indvars.iv2290 = phi i64 [ %i.aqf, %.lr.ph1963 ], [ %indvars.iv.next2291, %.loopexit1676 ] ; 3 uses
  %indvars.iv2288 = phi i64 [ %i.aqe, %.lr.ph1963 ], [ %indvars.iv.next2289, %.loopexit1676 ] ; 5 uses
  %.61961 = phi i32 [ 0, %.lr.ph1963 ], [ %.8, %.loopexit1676 ]
  %.214551957 = phi i32 [ %i.apv, %.lr.ph1963 ], [ %.31456, %.loopexit1676 ] ; 5 uses
  %i.atk = xor i64 %indvar2890, -1
  %i.atl = add i64 %i.atk, %i.aqf                 ; 4 uses
  %i.atm = shl i64 %indvar2890, 3
  %i.atn = sub i64 %i.arm, %i.atm
  %scevgep3041 = getelementptr i8, ptr %14, i64 %i.atn ; 2 uses
  %i.ato = mul i64 %i.arq, %indvar2890            ; 2 uses
  %scevgep3045 = getelementptr i8, ptr %i.asp, i64 %i.ato ; 2 uses
  %i.atp = mul i64 %i.ars, %indvar2890            ; 2 uses
  %scevgep3046 = getelementptr i8, ptr %i.asr, i64 %i.atp ; 2 uses
  %scevgep3047 = getelementptr i8, ptr %i.ast, i64 %i.ato ; 2 uses
  %scevgep3048 = getelementptr i8, ptr %i.asv, i64 %i.atp ; 2 uses
  %i.atq = mul i64 %i.asa, %indvar2890            ; 2 uses
  %scevgep3049 = getelementptr i8, ptr %i.asx, i64 %i.atq ; 2 uses
  %i.atr = mul i64 %i.asc, %indvar2890            ; 2 uses
  %scevgep3050 = getelementptr i8, ptr %i.asz, i64 %i.atr ; 2 uses
  %scevgep3051 = getelementptr i8, ptr %i.atb, i64 %i.atq ; 2 uses
  %scevgep3052 = getelementptr i8, ptr %i.atd, i64 %i.atr ; 2 uses
  %i.ats = xor i64 %indvar2890, -1
  %i.att = add i64 %i.ats, %i.aqg                 ; 8 uses
  %i.atu = mul i64 %i.ard, %indvar2890
  %i.atv = add i64 %i.arc, %i.atu
  %i.atw = mul i64 %i.ark, %indvar2890
  %i.atx = add i64 %i.arj, %i.atw
  %i.aty = trunc i64 %indvars.iv2288 to i32
  %i.atz = sub i64 %i.aqw, %indvar2890            ; 14 uses
  %indvars2299 = trunc i64 %indvars.iv2292 to i32 ; 12 uses
  %.not1510 = icmp eq i32 %.61961, 0
  br i1 %.not1510, label %bb.co, label %.loopexit1676

bb.co:                                            ; preds = %bb.cn
  store i32 1, ptr %i.t, align 4, !tbaa !104
  %.not1511 = icmp eq i64 %indvars.iv2292, 1
  br i1 %.not1511, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.aua = add nsw i32 %indvars2299, -1
  %i.aub = mul nsw i32 %i.aua, %i.y
  %i.auc = sext i32 %i.aub to i64
  %i.aud = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv2292
  %i.aue = getelementptr [8 x i8], ptr %i.aud, i64 %i.auc
  %i.auf = load double, ptr %i.aue, align 8, !tbaa !106
  %i.aug = fcmp une double %i.auf, 0.000000e+00
  br i1 %i.aug, label %.thread1635, label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  br i1 %.not1491, label %bb.cs, label %.thread1648

.thread1635:                                      ; preds = %bb.cp
  store i32 2, ptr %i.t, align 4, !tbaa !104
  br i1 %.not1491, label %bb.cr, label %.lr.ph1844

bb.cr:                                            ; preds = %.thread1635
  %i.auh = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv2292 ; 2 uses
  %i.aui = load i32, ptr %i.auh, align 4, !tbaa !104
  %.not1513 = icmp eq i32 %i.aui, 0
  br i1 %.not1513, label %.thread2416, label %.lr.ph1844

bb.cs:                                            ; preds = %bb.cq
  %i.auj = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv2292
  %.11365.in = load i32, ptr %i.auj, align 4, !tbaa !104
  %.11365 = icmp eq i32 %.11365.in, 0
  br i1 %.11365, label %.loopexit1676, label %.thread1648

.thread2416:                                      ; preds = %bb.cr
  %i.auk = getelementptr i8, ptr %i.auh, i64 -4
  %.11365.in2420 = load i32, ptr %i.auk, align 4, !tbaa !104
  %.113652421 = icmp eq i32 %.11365.in2420, 0
  br i1 %.113652421, label %.loopexit1676, label %.lr.ph1844

.thread1648:                                      ; preds = %bb.cs, %bb.cq
  %i.aul = mul i32 %i.apw, %indvars2299
  %i.aum = sext i32 %i.aul to i64
  %i.aun = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.aum
  %i.auo = load double, ptr %i.aun, align 8, !tbaa !106
  %i.aup = call double @llvm.fabs.f64(double %i.auo)
  %i.auq = fcmp ugt double %i.aup, %i.atj
  br i1 %i.auq, label %.lr.ph1844, label %bb.ct

bb.ct:                                            ; preds = %.thread1648
  %i.aur = mul i32 %i.apx, %indvars2299
  %i.aus = sext i32 %i.aur to i64
  %i.aut = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.aus
  %i.auu = load double, ptr %i.aut, align 8, !tbaa !106
  %i.auv = call double @llvm.fabs.f64(double %i.auu)
  %i.auw = fcmp ugt double %i.auv, %i.atj
  br i1 %i.auw, label %.lr.ph1844, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.aux = add nsw i32 %.214551957, -1            ; 3 uses
  %i.auy = load i32, ptr %3, align 4, !tbaa !104  ; 3 uses
  store i32 %i.auy, ptr %i.e, align 4, !tbaa !104
  %.not15161832 = icmp slt i32 %i.auy, 1
  br i1 %.not15161832, label %._crit_edge1836, label %.lr.ph1835

.lr.ph1835:                                       ; preds = %bb.cu
  %i.auz = mul nsw i32 %i.aux, %i.ah
  %i.ava = add i32 %i.auz, 1
  %i.avb = sext i32 %i.ava to i64
  %i.avc = shl nsw i64 %i.avb, 3
  %scevgep2121 = getelementptr i8, ptr %scevgep2120, i64 %i.avc
  %i.avd = zext nneg i32 %i.auy to i64
  %i.ave = shl nuw nsw i64 %i.avd, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep2121, i8 0, i64 %i.ave, i1 false), !tbaa !106
  br label %._crit_edge1836
end_hunk_1
begin_hunk_2_@dtgevc_:bb.a
  %i.bth = getelementptr i8, ptr %i.btg, i64 -8
  store double %i.btd, ptr %i.bth, align 8, !tbaa !106
  %indvars.iv.next2163.4 = add nuw nsw i64 %indvars.iv2162, 5 ; 2 uses
  %gep2502.5 = getelementptr [8 x i8], ptr %invariant.gep2501, i64 %indvars.iv.next2163.4
  %i.bti = getelementptr i8, ptr %gep2502.5, i64 -24
  %i.btj = load double, ptr %i.bti, align 8, !tbaa !106
  %i.btk = trunc nuw nsw i64 %indvars.iv.next2163.4 to i32
  %.reass.5 = add i32 %invariant.op, %i.btk
  %i.btl = sext i32 %.reass.5 to i64
  %i.btm = getelementptr [8 x i8], ptr %i.ak, i64 %i.btl
  %i.btn = getelementptr i8, ptr %i.btm, i64 -8
  store double %i.btj, ptr %i.btn, align 8, !tbaa !106
  %indvars.iv.next2163.5 = add nuw nsw i64 %indvars.iv2162, 6 ; 2 uses
  %gep2502.6 = getelementptr [8 x i8], ptr %invariant.gep2501, i64 %indvars.iv.next2163.5
  %i.bto = getelementptr i8, ptr %gep2502.6, i64 -24
  %i.btp = load double, ptr %i.bto, align 8, !tbaa !106
  %i.btq = trunc nuw nsw i64 %indvars.iv.next2163.5 to i32
  %.reass.6 = add i32 %invariant.op, %i.btq
  %i.btr = sext i32 %.reass.6 to i64
  %i.bts = getelementptr [8 x i8], ptr %i.ak, i64 %i.btr
  %i.btt = getelementptr i8, ptr %i.bts, i64 -8
  store double %i.btp, ptr %i.btt, align 8, !tbaa !106
  %indvars.iv.next2163.6 = add nuw nsw i64 %indvars.iv2162, 7 ; 2 uses
  %gep2502.7 = getelementptr [8 x i8], ptr %invariant.gep2501, i64 %indvars.iv.next2163.6
  %i.btu = getelementptr i8, ptr %gep2502.7, i64 -24
  %i.btv = load double, ptr %i.btu, align 8, !tbaa !106
  %i.btw = trunc nuw nsw i64 %indvars.iv.next2163.6 to i32
  %.reass.7 = add i32 %invariant.op, %i.btw
  %i.btx = sext i32 %.reass.7 to i64
  %i.bty = getelementptr [8 x i8], ptr %i.ak, i64 %i.btx
  %i.btz = getelementptr i8, ptr %i.bty, i64 -8
  store double %i.btv, ptr %i.btz, align 8, !tbaa !106
  %indvars.iv.next2163.7 = add nuw nsw i64 %indvars.iv2162, 8 ; 2 uses
  %exitcond2167.not.7 = icmp eq i64 %indvars.iv.next2163.7, %wide.trip.count2166
  br i1 %exitcond2167.not.7, label %._crit_edge1864, label %vec.epilog.scalar.ph2946, !llvm.loop !58

._crit_edge1864:                                  ; preds = %vec.epilog.scalar.ph2946.prol.loopexit, %vec.epilog.scalar.ph2946, %vec.epilog.middle.block2955, %middle.block2941
  %exitcond2173.not = icmp eq i64 %indvars.iv.next2169, %wide.trip.count2172
  %indvar.next2927 = add i32 %indvar2926, 1
  br i1 %exitcond2173.not, label %._crit_edge1869.split, label %iter.check2945, !llvm.loop !59

._crit_edge1869.split:                            ; preds = %._crit_edge1864, %.lr.ph1868, %.loopexit1675
  br i1 %i.bnt, label %bb.dt, label %._crit_edge1899

bb.dt:                                            ; preds = %._crit_edge1869.split
  %i.bua = fcmp ole double %i.bpz, 1.000000e+00
  %i.bub = select i1 %i.bua, double 1.000000e+00, double %i.bpz
  %i.buc = fdiv double 1.000000e+00, %i.bub       ; 5 uses
  %i.bud = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv2206 ; 2 uses
  %i.bue = load double, ptr %i.bud, align 8, !tbaa !106
  %i.buf = load i32, ptr %3, align 4, !tbaa !104  ; 3 uses
  %i.bug = sext i32 %i.buf to i64                 ; 2 uses
  %i.buh = getelementptr [8 x i8], ptr %i.ak, i64 %indvars.iv2206
  %i.bui = getelementptr [8 x i8], ptr %i.buh, i64 %i.bug ; 2 uses
  %i.buj = load double, ptr %i.bui, align 8, !tbaa !106
  %i.buk = fmul double %i.bmr, %i.buj
  %i.bul = call double @llvm.fmuladd.f64(double %i.bmq, double %i.bue, double %i.buk) ; 3 uses
  br i1 %i.bns, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.bum = getelementptr inbounds nuw i8, ptr %i.bud, i64 8
  %i.bun = load double, ptr %i.bum, align 8, !tbaa !106
  %i.buo = getelementptr i8, ptr %i.bui, i64 8
  %i.bup = load double, ptr %i.buo, align 8, !tbaa !106
  %i.buq = fmul double %i.bmr, %i.bup
  %i.bur = call double @llvm.fmuladd.f64(double %i.bmq, double %i.bun, double %i.buq) ; 2 uses
  %i.bus = fcmp oge double %i.bul, %i.bur
  %i.but = select i1 %i.bus, double %i.bul, double %i.bur
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.buu = phi double [ %i.but, %bb.du ], [ %i.bul, %bb.dt ] ; 2 uses
  %i.buv = fcmp oge double %i.buu, %i.bmq
  %i.buw = select i1 %i.buv, double %i.buu, double %i.bmq ; 3 uses
  store double %i.buw, ptr %i.g, align 8, !tbaa !106
  %i.bux = fcmp oge double %i.buw, %i.bmr
  %i.buy = select i1 %i.bux, double %i.buw, double %i.bmr ; 2 uses
  store double %i.buy, ptr %i.i, align 8, !tbaa !106
  %i.buz = fmul double %i.ate, %i.buc
  %i.bva = fcmp ogt double %i.buy, %i.buz
  br i1 %i.bva, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  br i1 %.not15351865, label %._crit_edge1876.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.dw
  %wide.trip.count2184 = zext nneg i32 %.pre2312 to i64
  %broadcast.splatinsert2898 = insertelement <4 x double> poison, double %i.buc, i64 0
  %broadcast.splat2899 = shufflevector <4 x double> %broadcast.splatinsert2898, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2917 = insertelement <4 x double> poison, double %i.buc, i64 0
  %broadcast.splat2918 = shufflevector <4 x double> %broadcast.splatinsert2917, <4 x double> poison, <4 x i32> zeroinitializer
  br label %iter.check2911

iter.check2911:                                   ; preds = %.preheader.preheader, %._crit_edge1873
  %indvars.iv2180 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next2181, %._crit_edge1873 ] ; 2 uses
  %i.bvb = add nuw nsw i64 %indvars.iv2180, 2
  %i.bvc = mul nsw i64 %i.bvb, %i.bug
  %invariant.gep2503 = getelementptr [8 x i8], ptr %i.ak, i64 %i.bvc ; 3 uses
  br i1 %min.iters.check2893, label %vec.epilog.scalar.ph2912.preheader, label %vector.main.loop.iter.check2894

vector.main.loop.iter.check2894:                  ; preds = %iter.check2911
  br i1 %min.iters.check2895, label %vec.epilog.ph2915, label %vector.body2900

vector.body2900:                                  ; preds = %vector.main.loop.iter.check2894, %vector.body2900
  %index2901 = phi i64 [ %index.next2906, %vector.body2900 ], [ 0, %vector.main.loop.iter.check2894 ] ; 2 uses
  %i.bvd = getelementptr [8 x i8], ptr %invariant.gep2503, i64 %index2901 ; 4 uses
  %i.bve = getelementptr i8, ptr %i.bvd, i64 8    ; 2 uses
  %i.bvf = getelementptr i8, ptr %i.bvd, i64 40   ; 2 uses
  %i.bvg = getelementptr i8, ptr %i.bvd, i64 72   ; 2 uses
  %i.bvh = getelementptr i8, ptr %i.bvd, i64 104  ; 2 uses
  %wide.load2902 = load <4 x double>, ptr %i.bve, align 8, !tbaa !106
  %wide.load2903 = load <4 x double>, ptr %i.bvf, align 8, !tbaa !106
  %wide.load2904 = load <4 x double>, ptr %i.bvg, align 8, !tbaa !106
  %wide.load2905 = load <4 x double>, ptr %i.bvh, align 8, !tbaa !106
  %i.bvi = fmul <4 x double> %broadcast.splat2899, %wide.load2902
  %i.bvj = fmul <4 x double> %broadcast.splat2899, %wide.load2903
  %i.bvk = fmul <4 x double> %broadcast.splat2899, %wide.load2904
  %i.bvl = fmul <4 x double> %broadcast.splat2899, %wide.load2905
  store <4 x double> %i.bvi, ptr %i.bve, align 8, !tbaa !106
  store <4 x double> %i.bvj, ptr %i.bvf, align 8, !tbaa !106
  store <4 x double> %i.bvk, ptr %i.bvg, align 8, !tbaa !106
  store <4 x double> %i.bvl, ptr %i.bvh, align 8, !tbaa !106
  %index.next2906 = add nuw i64 %index2901, 16    ; 2 uses
  %i.bvm = icmp eq i64 %index.next2906, %n.vec2897
  br i1 %i.bvm, label %middle.block2907, label %vector.body2900, !llvm.loop !60

middle.block2907:                                 ; preds = %vector.body2900
  br i1 %cmp.n2908, label %._crit_edge1873, label %vec.epilog.iter.check2913

vec.epilog.iter.check2913:                        ; preds = %middle.block2907
  br i1 %min.epilog.iters.check2914, label %vec.epilog.scalar.ph2912.preheader, label %vec.epilog.ph2915, !prof !111

vec.epilog.ph2915:                                ; preds = %vector.main.loop.iter.check2894, %vec.epilog.iter.check2913
  %vec.epilog.resume.val2909 = phi i64 [ %n.vec2897, %vec.epilog.iter.check2913 ], [ 0, %vector.main.loop.iter.check2894 ]
  br label %vec.epilog.vector.body2919

vec.epilog.vector.body2919:                       ; preds = %vec.epilog.vector.body2919, %vec.epilog.ph2915
  %index2920 = phi i64 [ %vec.epilog.resume.val2909, %vec.epilog.ph2915 ], [ %index.next2922, %vec.epilog.vector.body2919 ] ; 2 uses
  %i.bvn = getelementptr [8 x i8], ptr %invariant.gep2503, i64 %index2920
  %i.bvo = getelementptr i8, ptr %i.bvn, i64 8    ; 2 uses
  %wide.load2921 = load <4 x double>, ptr %i.bvo, align 8, !tbaa !106
  %i.bvp = fmul <4 x double> %broadcast.splat2918, %wide.load2921
  store <4 x double> %i.bvp, ptr %i.bvo, align 8, !tbaa !106
  %index.next2922 = add nuw i64 %index2920, 4     ; 2 uses
  %i.bvq = icmp eq i64 %index.next2922, %n.vec2916
  br i1 %i.bvq, label %vec.epilog.middle.block2923, label %vec.epilog.vector.body2919, !llvm.loop !61

vec.epilog.middle.block2923:                      ; preds = %vec.epilog.vector.body2919
  br i1 %cmp.n2924, label %._crit_edge1873, label %vec.epilog.scalar.ph2912.preheader

vec.epilog.scalar.ph2912.preheader:               ; preds = %iter.check2911, %vec.epilog.iter.check2913, %vec.epilog.middle.block2923
  %indvars.iv2174.ph = phi i64 [ 1, %iter.check2911 ], [ %i.bnc, %vec.epilog.iter.check2913 ], [ %i.bnd, %vec.epilog.middle.block2923 ]
  br label %vec.epilog.scalar.ph2912

vec.epilog.scalar.ph2912:                         ; preds = %vec.epilog.scalar.ph2912.preheader, %vec.epilog.scalar.ph2912
  %indvars.iv2174 = phi i64 [ %indvars.iv.next2175, %vec.epilog.scalar.ph2912 ], [ %indvars.iv2174.ph, %vec.epilog.scalar.ph2912.preheader ] ; 2 uses
  %gep2504 = getelementptr [8 x i8], ptr %invariant.gep2503, i64 %indvars.iv2174 ; 2 uses
  %i.bvr = load double, ptr %gep2504, align 8, !tbaa !106
  %i.bvs = fmul double %i.buc, %i.bvr
  store double %i.bvs, ptr %gep2504, align 8, !tbaa !106
  %indvars.iv.next2175 = add nuw nsw i64 %indvars.iv2174, 1 ; 2 uses
  %exitcond2179.not = icmp eq i64 %indvars.iv.next2175, %indvars.iv2288
  br i1 %exitcond2179.not, label %._crit_edge1873, label %vec.epilog.scalar.ph2912, !llvm.loop !62

._crit_edge1873:                                  ; preds = %vec.epilog.scalar.ph2912, %vec.epilog.middle.block2923, %middle.block2907
  %indvars.iv.next2181 = add nuw nsw i64 %indvars.iv2180, 1 ; 2 uses
  %exitcond2185.not = icmp eq i64 %indvars.iv.next2181, %wide.trip.count2184
  br i1 %exitcond2185.not, label %._crit_edge1876.split, label %iter.check2911, !llvm.loop !63

._crit_edge1876.split:                            ; preds = %._crit_edge1873, %bb.dw
  %i.bvt = fmul double %i.bpz, %i.buc
  br label %bb.dx

bb.dx:                                            ; preds = %._crit_edge1876.split, %bb.dv
  %.101445 = phi double [ %i.bvt, %._crit_edge1876.split ], [ %i.bpz, %bb.dv ] ; 3 uses
  %i.bvu = load i32, ptr %i.q, align 4, !tbaa !104 ; 4 uses
  store i32 %i.bvu, ptr %i.e, align 4, !tbaa !104
  %.not15371885 = icmp slt i32 %i.bvu, 1
  br i1 %.not15371885, label %.loopexit1674, label %.lr.ph1889

.lr.ph1889:                                       ; preds = %bb.dx
  %i.bvv = load double, ptr %i.n, align 8         ; 3 uses
  %i.bvw = shl i32 %i.buf, 1
  %i.bvx = sext i32 %i.bvw to i64                 ; 5 uses
  %i.bvy = add nsw i64 %indvars.iv2206, %i.bvx    ; 2 uses
  %i.bvz = mul i32 %i.buf, 3
  %i.bwa = sext i32 %i.bvz to i64                 ; 3 uses
  %i.bwb = load double, ptr %i.s, align 8         ; 3 uses
  %i.bwc = load double, ptr %i.r, align 8         ; 2 uses
  %i.bwd = add nsw i64 %indvars.iv2206, -1        ; 6 uses
  %.not1538.not1881 = icmp sgt i64 %indvars.iv2206, 1 ; 2 uses
  br i1 %.not1512163916541655, label %.lr.ph1889.split.us, label %.lr.ph1889.split

.lr.ph1889.split.us:                              ; preds = %.lr.ph1889
  br i1 %.not1538.not1881, label %.lr.ph1884.us.preheader, label %._crit_edge1899

.lr.ph1884.us.preheader:                          ; preds = %.lr.ph1889.split.us
  %i.bwe = add nuw i32 %i.bvu, 1
  %wide.trip.count2204 = zext i32 %i.bwe to i64
  %i.bwf = getelementptr [8 x i8], ptr %i.ak, i64 %i.bvy
  %invariant.gep2513 = getelementptr [8 x i8], ptr %i.ak, i64 %i.bvx ; 2 uses
  %i.bwg = shl nsw i64 %i.bvx, 3                  ; 2 uses
  %scevgep2797 = getelementptr i8, ptr %14, i64 %i.bwg ; 2 uses
  %scevgep2801 = getelementptr i8, ptr %scevgep2800, i64 %i.bwg ; 2 uses
  %min.iters.check2815 = icmp ult i64 %indvars.iv2206, 9
  %n.vec2817 = and i64 %i.bwd, -8                 ; 3 uses
  %i.bwh = or disjoint i64 %n.vec2817, 1
  %cmp.n2832 = icmp eq i64 %i.bwd, %n.vec2817
  br label %.lr.ph1884.us

.lr.ph1884.us:                                    ; preds = %.lr.ph1884.us.preheader, %..loopexit_crit_edge.us
  %indvar2803 = phi i32 [ 0, %.lr.ph1884.us.preheader ], [ %indvar.next2804, %..loopexit_crit_edge.us ] ; 3 uses
  %indvars.iv2200 = phi i64 [ 1, %.lr.ph1884.us.preheader ], [ %indvars.iv.next2201, %..loopexit_crit_edge.us ] ; 3 uses
  %i.bwi = getelementptr [8 x i8], ptr %i.bwf, i64 %indvars.iv2200
  %i.bwj = getelementptr i8, ptr %i.bwi, i64 -8
  %i.bwk = load double, ptr %i.bwj, align 8, !tbaa !106 ; 2 uses
  %i.bwl = fmul double %i.bwk, %i.bwb             ; 2 uses
  %16 = add nuw nsw i64 %i.bwd, %indvars.iv2200
  %17 = trunc nuw i64 %16 to i32                  ; 2 uses
  %i.bwm = mul nsw i32 %i.y, %17
  %i.bwn = fneg double %i.bwk
  %i.bwo = fmul double %i.bvv, %i.bwn             ; 2 uses
  %i.bwp = mul nsw i32 %i.ab, %17
  %i.bwq = sext i32 %i.bwm to i64
  %i.bwr = sext i32 %i.bwp to i64
  %invariant.gep2515 = getelementptr [8 x i8], ptr %i.aa, i64 %i.bwq ; 2 uses
  %invariant.gep2517 = getelementptr [8 x i8], ptr %i.ad, i64 %i.bwr ; 2 uses
  br i1 %min.iters.check2815, label %scalar.ph.preheader, label %vector.memcheck2796

vector.memcheck2796:                              ; preds = %.lr.ph1884.us
  %i.bws = add i32 %i.bnr, %indvar2803
  %i.bwt = mul i32 %i.ab, %i.bws
  %i.bwu = sext i32 %i.bwt to i64
  %i.bwv = shl nsw i64 %i.bwu, 3                  ; 2 uses
  %scevgep2811 = getelementptr i8, ptr %scevgep2810, i64 %i.bwv
  %scevgep2809 = getelementptr i8, ptr %scevgep2808, i64 %i.bwv
  %i.bww = add i32 %i.bnp, %indvar2803
  %i.bwx = mul i32 %i.y, %i.bww
  %i.bwy = sext i32 %i.bwx to i64
  %i.bwz = shl nsw i64 %i.bwy, 3                  ; 2 uses
  %scevgep2807 = getelementptr i8, ptr %scevgep2806, i64 %i.bwz
  %scevgep2805 = getelementptr i8, ptr %scevgep2802, i64 %i.bwz
  %bound0 = icmp ult ptr %scevgep2797, %scevgep2807
  %bound1 = icmp ult ptr %scevgep2805, %scevgep2801
  %found.conflict = and i1 %bound0, %bound1
  %bound02812 = icmp ult ptr %scevgep2797, %scevgep2811
  %bound12813 = icmp ult ptr %scevgep2809, %scevgep2801
  %found.conflict2814 = and i1 %bound02812, %bound12813
  %conflict.rdx = or i1 %found.conflict, %found.conflict2814
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph2816

vector.ph2816:                                    ; preds = %vector.memcheck2796
  %broadcast.splatinsert2818 = insertelement <4 x double> poison, double %i.bwl, i64 0
  %broadcast.splat2819 = shufflevector <4 x double> %broadcast.splatinsert2818, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2820 = insertelement <4 x double> poison, double %i.bwo, i64 0
  %broadcast.splat2821 = shufflevector <4 x double> %broadcast.splatinsert2820, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body2822

vector.body2822:                                  ; preds = %vector.body2822, %vector.ph2816
  %index2823 = phi i64 [ 0, %vector.ph2816 ], [ %index.next2830, %vector.body2822 ] ; 2 uses
  %i.bxa = or disjoint i64 %index2823, 1          ; 3 uses
  %i.bxb = getelementptr [8 x i8], ptr %invariant.gep2513, i64 %i.bxa ; 3 uses
  %i.bxc = getelementptr i8, ptr %i.bxb, i64 32   ; 2 uses
  %wide.load2824 = load <4 x double>, ptr %i.bxb, align 8, !tbaa !106, !alias.scope !120, !noalias !121
  %wide.load2825 = load <4 x double>, ptr %i.bxc, align 8, !tbaa !106, !alias.scope !120, !noalias !121
  %i.bxd = getelementptr [8 x i8], ptr %invariant.gep2515, i64 %i.bxa ; 2 uses
  %i.bxe = getelementptr i8, ptr %i.bxd, i64 32
  %wide.load2826 = load <4 x double>, ptr %i.bxd, align 8, !tbaa !106, !alias.scope !122
  %wide.load2827 = load <4 x double>, ptr %i.bxe, align 8, !tbaa !106, !alias.scope !122
  %i.bxf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2821, <4 x double> %wide.load2826, <4 x double> %wide.load2824)
  %i.bxg = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2821, <4 x double> %wide.load2827, <4 x double> %wide.load2825)
  %i.bxh = getelementptr [8 x i8], ptr %invariant.gep2517, i64 %i.bxa ; 2 uses
  %i.bxi = getelementptr i8, ptr %i.bxh, i64 32
  %wide.load2828 = load <4 x double>, ptr %i.bxh, align 8, !tbaa !106, !alias.scope !123
  %wide.load2829 = load <4 x double>, ptr %i.bxi, align 8, !tbaa !106, !alias.scope !123
  %i.bxj = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2819, <4 x double> %wide.load2828, <4 x double> %i.bxf)
  %i.bxk = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2819, <4 x double> %wide.load2829, <4 x double> %i.bxg)
  store <4 x double> %i.bxj, ptr %i.bxb, align 8, !tbaa !106, !alias.scope !120, !noalias !121
  store <4 x double> %i.bxk, ptr %i.bxc, align 8, !tbaa !106, !alias.scope !120, !noalias !121
  %index.next2830 = add nuw i64 %index2823, 8     ; 2 uses
  %i.bxl = icmp eq i64 %index.next2830, %n.vec2817
  br i1 %i.bxl, label %middle.block2831, label %vector.body2822, !llvm.loop !68

middle.block2831:                                 ; preds = %vector.body2822
  br i1 %cmp.n2832, label %..loopexit_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck2796, %.lr.ph1884.us, %middle.block2831
  %indvars.iv2196.ph = phi i64 [ 1, %vector.memcheck2796 ], [ 1, %.lr.ph1884.us ], [ %i.bwh, %middle.block2831 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv2196 = phi i64 [ %indvars.iv.next2197, %scalar.ph ], [ %indvars.iv2196.ph, %scalar.ph.preheader ] ; 4 uses
  %gep2514 = getelementptr [8 x i8], ptr %invariant.gep2513, i64 %indvars.iv2196 ; 2 uses
  %i.bxm = load double, ptr %gep2514, align 8, !tbaa !106
  %gep2516 = getelementptr [8 x i8], ptr %invariant.gep2515, i64 %indvars.iv2196
  %i.bxn = load double, ptr %gep2516, align 8, !tbaa !106
  %i.bxo = call double @llvm.fmuladd.f64(double %i.bwo, double %i.bxn, double %i.bxm)
  %gep2518 = getelementptr [8 x i8], ptr %invariant.gep2517, i64 %indvars.iv2196
  %i.bxp = load double, ptr %gep2518, align 8, !tbaa !106
  %i.bxq = call double @llvm.fmuladd.f64(double %i.bwl, double %i.bxp, double %i.bxo)
  store double %i.bxq, ptr %gep2514, align 8, !tbaa !106
  %indvars.iv.next2197 = add nuw nsw i64 %indvars.iv2196, 1 ; 2 uses
  %.not1538.not.us = icmp slt i64 %indvars.iv.next2197, %indvars.iv2206
  br i1 %.not1538.not.us, label %scalar.ph, label %..loopexit_crit_edge.us, !llvm.loop !69

..loopexit_crit_edge.us:                          ; preds = %scalar.ph, %middle.block2831
  %indvars.iv.next2201 = add nuw nsw i64 %indvars.iv2200, 1 ; 2 uses
  %exitcond2205.not = icmp eq i64 %indvars.iv.next2201, %wide.trip.count2204
  %indvar.next2804 = add i32 %indvar2803, 1
  br i1 %exitcond2205.not, label %.loopexit1674, label %.lr.ph1884.us, !llvm.loop !70

.lr.ph1889.split:                                 ; preds = %.lr.ph1889
  br i1 %.not1538.not1881, label %.lr.ph1880.preheader, label %._crit_edge1899

.lr.ph1880.preheader:                             ; preds = %.lr.ph1889.split
  %i.bxr = add nuw i32 %i.bvu, 1
  %wide.trip.count2194 = zext i32 %i.bxr to i64
  %i.bxs = getelementptr [8 x i8], ptr %i.ak, i64 %i.bvy
  %i.bxt = getelementptr [8 x i8], ptr %i.ak, i64 %indvars.iv2206 ; 2 uses
  %i.bxu = getelementptr [8 x i8], ptr %i.bxt, i64 %i.bwa ; 4 uses
  %invariant.gep2505 = getelementptr [8 x i8], ptr %i.ak, i64 %i.bvx ; 2 uses
  %invariant.gep2511 = getelementptr [8 x i8], ptr %i.ak, i64 %i.bwa ; 2 uses
  %i.bxv = shl nsw i64 %i.bvx, 3                  ; 2 uses
  %scevgep2834 = getelementptr i8, ptr %14, i64 %i.bxv ; 3 uses
  %scevgep2835 = getelementptr i8, ptr %i.bxt, i64 %i.bxv ; 3 uses
  %i.bxw = shl nsw i64 %i.bwa, 3
  %scevgep2836 = getelementptr i8, ptr %14, i64 %i.bxw ; 3 uses
  %min.iters.check2867 = icmp ult i64 %indvars.iv2206, 9
  %bound02847 = icmp ult ptr %scevgep2834, %i.bxu
  %bound12848 = icmp ult ptr %scevgep2836, %scevgep2835
  %found.conflict2849 = and i1 %bound02847, %bound12848
  %n.vec2869 = and i64 %i.bwd, -4                 ; 3 uses
  %i.bxx = or disjoint i64 %n.vec2869, 1
  %cmp.n2888 = icmp eq i64 %i.bwd, %n.vec2869
  br label %.lr.ph1880

.lr.ph1880:                                       ; preds = %.lr.ph1880.preheader, %..loopexit1670_crit_edge
  %indvar2838 = phi i32 [ 0, %.lr.ph1880.preheader ], [ %indvar.next2839, %..loopexit1670_crit_edge ] ; 3 uses
  %indvars.iv2190 = phi i64 [ 1, %.lr.ph1880.preheader ], [ %indvars.iv.next2191, %..loopexit1670_crit_edge ] ; 4 uses
  %i.bxy = getelementptr [8 x i8], ptr %i.bxs, i64 %indvars.iv2190
  %i.bxz = getelementptr i8, ptr %i.bxy, i64 -8
  %i.bya = load double, ptr %i.bxz, align 8, !tbaa !106 ; 3 uses
  %i.byb = getelementptr [8 x i8], ptr %i.bxu, i64 %indvars.iv2190
  %i.byc = getelementptr i8, ptr %i.byb, i64 -8
  %i.byd = load double, ptr %i.byc, align 8, !tbaa !106 ; 2 uses
  %i.bye = fneg double %i.byd                     ; 2 uses
  %i.byf = fmul double %i.bwc, %i.bye
  %i.byg = call double @llvm.fmuladd.f64(double %i.bwb, double %i.bya, double %i.byf) ; 2 uses
  %i.byh = fmul double %i.byd, %i.bwb
  %i.byi = call double @llvm.fmuladd.f64(double %i.bwc, double %i.bya, double %i.byh) ; 2 uses
  %18 = add nuw nsw i64 %i.bwd, %indvars.iv2190
  %19 = trunc nuw i64 %18 to i32                  ; 2 uses
  %i.byj = mul nsw i32 %i.y, %19
  %i.byk = fneg double %i.bya
  %i.byl = fmul double %i.bvv, %i.byk             ; 2 uses
  %i.bym = mul nsw i32 %i.ab, %19
  %i.byn = fmul double %i.bvv, %i.bye             ; 2 uses
  %i.byo = sext i32 %i.byj to i64
  %i.byp = sext i32 %i.bym to i64
  %invariant.gep2507 = getelementptr [8 x i8], ptr %i.aa, i64 %i.byo ; 2 uses
  %invariant.gep2509 = getelementptr [8 x i8], ptr %i.ad, i64 %i.byp ; 2 uses
  br i1 %min.iters.check2867, label %scalar.ph2866.preheader, label %vector.memcheck2833

vector.memcheck2833:                              ; preds = %.lr.ph1880
  %i.byq = add i32 %i.bnm, %indvar2838
  %i.byr = mul i32 %i.ab, %i.byq
  %i.bys = sext i32 %i.byr to i64
  %i.byt = shl nsw i64 %i.bys, 3                  ; 2 uses
  %scevgep2846 = getelementptr i8, ptr %scevgep2845, i64 %i.byt ; 2 uses
  %scevgep2844 = getelementptr i8, ptr %scevgep2843, i64 %i.byt ; 2 uses
  %i.byu = add i32 %i.bnj, %indvar2838
  %i.byv = mul i32 %i.y, %i.byu
  %i.byw = sext i32 %i.byv to i64
  %i.byx = shl nsw i64 %i.byw, 3                  ; 2 uses
  %scevgep2842 = getelementptr i8, ptr %scevgep2841, i64 %i.byx ; 2 uses
  %scevgep2840 = getelementptr i8, ptr %scevgep2837, i64 %i.byx ; 2 uses
  %bound02850 = icmp ult ptr %scevgep2834, %scevgep2842
  %bound12851 = icmp ult ptr %scevgep2840, %scevgep2835
  %found.conflict2852 = and i1 %bound02850, %bound12851
  %conflict.rdx2853 = or i1 %found.conflict2849, %found.conflict2852
  %bound02854 = icmp ult ptr %scevgep2834, %scevgep2846
  %bound12855 = icmp ult ptr %scevgep2844, %scevgep2835
  %found.conflict2856 = and i1 %bound02854, %bound12855
  %conflict.rdx2857 = or i1 %conflict.rdx2853, %found.conflict2856
  %bound02858 = icmp ult ptr %scevgep2836, %scevgep2842
  %bound12859 = icmp ult ptr %scevgep2840, %i.bxu
  %found.conflict2860 = and i1 %bound02858, %bound12859
  %conflict.rdx2861 = or i1 %conflict.rdx2857, %found.conflict2860
  %bound02862 = icmp ult ptr %scevgep2836, %scevgep2846
  %bound12863 = icmp ult ptr %scevgep2844, %i.bxu
  %found.conflict2864 = and i1 %bound02862, %bound12863
  %conflict.rdx2865 = or i1 %conflict.rdx2861, %found.conflict2864
  br i1 %conflict.rdx2865, label %scalar.ph2866.preheader, label %vector.ph2868

vector.ph2868:                                    ; preds = %vector.memcheck2833
  %broadcast.splatinsert2870 = insertelement <4 x double> poison, double %i.byg, i64 0
  %broadcast.splat2871 = shufflevector <4 x double> %broadcast.splatinsert2870, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2872 = insertelement <4 x double> poison, double %i.byi, i64 0
  %broadcast.splat2873 = shufflevector <4 x double> %broadcast.splatinsert2872, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2874 = insertelement <4 x double> poison, double %i.byl, i64 0
  %broadcast.splat2875 = shufflevector <4 x double> %broadcast.splatinsert2874, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2876 = insertelement <4 x double> poison, double %i.byn, i64 0
  %broadcast.splat2877 = shufflevector <4 x double> %broadcast.splatinsert2876, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body2878

vector.body2878:                                  ; preds = %vector.body2878, %vector.ph2868
  %index2879 = phi i64 [ 0, %vector.ph2868 ], [ %index.next2886, %vector.body2878 ] ; 2 uses
  %i.byy = or disjoint i64 %index2879, 1          ; 4 uses
  %i.byz = getelementptr [8 x i8], ptr %invariant.gep2505, i64 %i.byy ; 2 uses
  %wide.load2880 = load <4 x double>, ptr %i.byz, align 8, !tbaa !106, !alias.scope !124, !noalias !125
  %i.bza = getelementptr [8 x i8], ptr %invariant.gep2507, i64 %i.byy ; 2 uses
  %wide.load2881 = load <4 x double>, ptr %i.bza, align 8, !tbaa !106, !alias.scope !126
  %i.bzb = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2875, <4 x double> %wide.load2881, <4 x double> %wide.load2880)
  %i.bzc = getelementptr [8 x i8], ptr %invariant.gep2509, i64 %i.byy ; 2 uses
  %wide.load2882 = load <4 x double>, ptr %i.bzc, align 8, !tbaa !106, !alias.scope !127
  %i.bzd = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2871, <4 x double> %wide.load2882, <4 x double> %i.bzb)
  store <4 x double> %i.bzd, ptr %i.byz, align 8, !tbaa !106, !alias.scope !124, !noalias !125
  %i.bze = getelementptr [8 x i8], ptr %invariant.gep2511, i64 %i.byy ; 2 uses
  %wide.load2883 = load <4 x double>, ptr %i.bze, align 8, !tbaa !106, !alias.scope !128, !noalias !129
  %wide.load2884 = load <4 x double>, ptr %i.bza, align 8, !tbaa !106, !alias.scope !126
  %i.bzf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2877, <4 x double> %wide.load2884, <4 x double> %wide.load2883)
  %wide.load2885 = load <4 x double>, ptr %i.bzc, align 8, !tbaa !106, !alias.scope !127
  %i.bzg = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat2873, <4 x double> %wide.load2885, <4 x double> %i.bzf)
  store <4 x double> %i.bzg, ptr %i.bze, align 8, !tbaa !106, !alias.scope !128, !noalias !129
  %index.next2886 = add nuw i64 %index2879, 4     ; 2 uses
  %i.bzh = icmp eq i64 %index.next2886, %n.vec2869
  br i1 %i.bzh, label %middle.block2887, label %vector.body2878, !llvm.loop !76

middle.block2887:                                 ; preds = %vector.body2878
  br i1 %cmp.n2888, label %..loopexit1670_crit_edge, label %scalar.ph2866.preheader

scalar.ph2866.preheader:                          ; preds = %vector.memcheck2833, %.lr.ph1880, %middle.block2887
  %indvars.iv2186.ph = phi i64 [ 1, %vector.memcheck2833 ], [ 1, %.lr.ph1880 ], [ %i.bxx, %middle.block2887 ]
  br label %scalar.ph2866

scalar.ph2866:                                    ; preds = %scalar.ph2866.preheader, %scalar.ph2866
  %indvars.iv2186 = phi i64 [ %indvars.iv.next2187, %scalar.ph2866 ], [ %indvars.iv2186.ph, %scalar.ph2866.preheader ] ; 5 uses
  %gep2506 = getelementptr [8 x i8], ptr %invariant.gep2505, i64 %indvars.iv2186 ; 2 uses
  %i.bzi = load double, ptr %gep2506, align 8, !tbaa !106
  %gep2508 = getelementptr [8 x i8], ptr %invariant.gep2507, i64 %indvars.iv2186 ; 2 uses
  %i.bzj = load double, ptr %gep2508, align 8, !tbaa !106
  %i.bzk = call double @llvm.fmuladd.f64(double %i.byl, double %i.bzj, double %i.bzi)
  %gep2510 = getelementptr [8 x i8], ptr %invariant.gep2509, i64 %indvars.iv2186 ; 2 uses
  %i.bzl = load double, ptr %gep2510, align 8, !tbaa !106
  %i.bzm = call double @llvm.fmuladd.f64(double %i.byg, double %i.bzl, double %i.bzk)
  store double %i.bzm, ptr %gep2506, align 8, !tbaa !106
  %gep2512 = getelementptr [8 x i8], ptr %invariant.gep2511, i64 %indvars.iv2186 ; 2 uses
  %i.bzn = load double, ptr %gep2512, align 8, !tbaa !106
  %i.bzo = load double, ptr %gep2508, align 8, !tbaa !106
  %i.bzp = call double @llvm.fmuladd.f64(double %i.byn, double %i.bzo, double %i.bzn)
  %i.bzq = load double, ptr %gep2510, align 8, !tbaa !106
  %i.bzr = call double @llvm.fmuladd.f64(double %i.byi, double %i.bzq, double %i.bzp)
  store double %i.bzr, ptr %gep2512, align 8, !tbaa !106
  %indvars.iv.next2187 = add nuw nsw i64 %indvars.iv2186, 1 ; 2 uses
  %.not1539.not = icmp slt i64 %indvars.iv.next2187, %indvars.iv2206
  br i1 %.not1539.not, label %scalar.ph2866, label %..loopexit1670_crit_edge, !llvm.loop !77

..loopexit1670_crit_edge:                         ; preds = %scalar.ph2866, %middle.block2887
  %indvars.iv.next2191 = add nuw nsw i64 %indvars.iv2190, 1 ; 2 uses
  %exitcond2195.not = icmp eq i64 %indvars.iv.next2191, %wide.trip.count2194
  %indvar.next2839 = add i32 %indvar2838, 1
  br i1 %exitcond2195.not, label %.loopexit1674, label %.lr.ph1880, !llvm.loop !70

.loopexit1674:                                    ; preds = %..loopexit1670_crit_edge, %..loopexit_crit_edge.us, %bb.dx, %bb.dn
  %i.bzs = phi i32 [ %i.bne, %bb.dn ], [ %.pre2312, %..loopexit_crit_edge.us ], [ %.pre2312, %bb.dx ], [ %.pre2312, %..loopexit1670_crit_edge ] ; 2 uses
  %.121447 = phi double [ %.914441890, %bb.dn ], [ %.101445, %..loopexit_crit_edge.us ], [ %.101445, %bb.dx ], [ %.101445, %..loopexit1670_crit_edge ]
  %.41421 = phi i32 [ 1, %bb.dn ], [ 0, %..loopexit_crit_edge.us ], [ 0, %bb.dx ], [ 0, %..loopexit1670_crit_edge ]
  %indvars.iv.next2207 = add nsw i64 %indvars.iv2206, -1
  %i.bzt = icmp sgt i64 %indvars.iv2206, 1
  %indvar.next2799 = add i64 %indvar2798, 1
  br i1 %i.bzt, label %bb.dm, label %._crit_edge1899, !llvm.loop !78

._crit_edge1899:                                  ; preds = %._crit_edge1869.split, %.lr.ph1889.split.us, %.lr.ph1889.split, %.loopexit1674, %.loopexit1680
  %i.bzu = phi i32 [ %i.bmk, %.loopexit1680 ], [ %.pre2312, %._crit_edge1869.split ], [ %.pre2312, %.lr.ph1889.split.us ], [ %.pre2312, %.lr.ph1889.split ], [ %i.bzs, %.loopexit1674 ] ; 8 uses
  %i.bzv = sub i32 %.214551957, %i.bzu            ; 11 uses
  %.not1521.not1933 = icmp sgt i32 %i.bzu, 0      ; 2 uses
  br i1 %.not1520, label %bb.ec, label %bb.dy

bb.dy:                                            ; preds = %._crit_edge1899
  %.pre2313.pre = load i32, ptr %3, align 4, !tbaa !104 ; 11 uses
  br i1 %.not1521.not1933, label %.lr.ph1916, label %.loopexit1679

.lr.ph1916:                                       ; preds = %bb.dy
  %.not15301900 = icmp slt i32 %.pre2313.pre, 1
  %.not15311909 = icmp slt i64 %indvars.iv2292, 2 ; 2 uses
  %i.bzw = add i32 %.pre2313.pre, 1               ; 3 uses
  %i.bzx = sext i32 %.pre2313.pre to i64          ; 4 uses
  %wide.trip.count2232 = zext nneg i32 %i.bzu to i64
  %wide.trip.count2214 = zext i32 %i.bzw to i64   ; 5 uses
  %i.bzy = add nsw i64 %wide.trip.count2214, -1   ; 4 uses
  %i.bzz = add nsw i64 %wide.trip.count2214, -2   ; 2 uses
  %xtraiter3205 = and i64 %i.bzy, 7               ; 3 uses
  %i.caa = icmp ult i64 %i.bzz, 7
  %unroll_iter3209 = and i64 %i.bzy, -8
  %lcmp.mod3207.not = icmp eq i64 %xtraiter3205, 0
  %lcmp.mod3208 = icmp ne i64 %xtraiter3205, 0
  %xtraiter3212 = and i64 %i.bzy, 3               ; 3 uses
  %i.cab = icmp ult i64 %i.bzz, 3
  %unroll_iter3216 = and i64 %i.bzy, -4
  %lcmp.mod3214.not = icmp eq i64 %xtraiter3212, 0
  %lcmp.mod3215 = icmp ne i64 %xtraiter3212, 0
  br label %bb.dz

bb.dz:                                            ; preds = %.lr.ph1916, %._crit_edge1912.split
  %indvars.iv2228 = phi i64 [ 0, %.lr.ph1916 ], [ %indvars.iv.next2229, %._crit_edge1912.split ] ; 5 uses
  br i1 %.not15301900, label %.preheader1673, label %.lr.ph1903

.lr.ph1903:                                       ; preds = %bb.dz
  %i.cac = add nuw nsw i64 %indvars.iv2228, 2
  %i.cad = mul nuw nsw i64 %i.cac, %i.bzx
  %i.cae = getelementptr [8 x i8], ptr %i.ak, i64 %i.cad
  %i.caf = getelementptr i8, ptr %i.cae, i64 8    ; 9 uses
  %i.cag = add nuw nsw i64 %indvars.iv2228, 4
  %i.cah = mul nuw nsw i64 %i.cag, %i.bzx
  %invariant.gep2521 = getelementptr [8 x i8], ptr %i.ak, i64 %i.cah ; 9 uses
  br i1 %i.caa, label %.epil.preheader3204, label %.lr.ph1903.new

.preheader1673:                                   ; preds = %bb.dz
  br i1 %.not15311909, label %._crit_edge1912.split, label %.lr.ph1911

.preheader1673.thread.unr-lcssa:                  ; preds = %.lr.ph1903.new
  br i1 %lcmp.mod3207.not, label %.preheader1673.thread, label %.epil.preheader3204

.epil.preheader3204:                              ; preds = %.preheader1673.thread.unr-lcssa, %.lr.ph1903
  %indvars.iv2210.epil.init = phi i64 [ 1, %.lr.ph1903 ], [ %indvars.iv.next2211.7, %.preheader1673.thread.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod3208)
  br label %bb.ea

bb.ea:                                            ; preds = %bb.ea, %.epil.preheader3204
  %indvars.iv2210.epil = phi i64 [ %indvars.iv2210.epil.init, %.epil.preheader3204 ], [ %indvars.iv.next2211.epil, %bb.ea ] ; 3 uses
  %epil.iter3206 = phi i64 [ 0, %.epil.preheader3204 ], [ %epil.iter3206.next, %bb.ea ]
  %i.cai = load double, ptr %i.caf, align 8, !tbaa !106
  %gep2520.epil = getelementptr [8 x i8], ptr %invariant.gep2519, i64 %indvars.iv2210.epil
  %i.caj = load double, ptr %gep2520.epil, align 8, !tbaa !106
  %i.cak = fmul double %i.cai, %i.caj
  %gep2522.epil = getelementptr [8 x i8], ptr %invariant.gep2521, i64 %indvars.iv2210.epil
  store double %i.cak, ptr %gep2522.epil, align 8, !tbaa !106
  %indvars.iv.next2211.epil = add nuw nsw i64 %indvars.iv2210.epil, 1
  %epil.iter3206.next = add i64 %epil.iter3206, 1 ; 2 uses
  %epil.iter3206.cmp.not = icmp eq i64 %epil.iter3206.next, %xtraiter3205
  br i1 %epil.iter3206.cmp.not, label %.preheader1673.thread, label %bb.ea, !llvm.loop !79

.preheader1673.thread:                            ; preds = %bb.ea, %.preheader1673.thread.unr-lcssa
  br i1 %.not15311909, label %._crit_edge1912.split, label %.lr.ph1907.preheader

.lr.ph1911:                                       ; preds = %.preheader1673
  store i32 %.pre2313.pre, ptr %i.f, align 4, !tbaa !104
  br label %._crit_edge1912.split

.lr.ph1907.preheader:                             ; preds = %.preheader1673.thread
  store i32 %.pre2313.pre, ptr %i.f, align 4, !tbaa !104
  %i.cal = add nuw nsw i64 %indvars.iv2228, 2
  %i.cam = mul nuw nsw i64 %i.cal, %i.bzx
  %i.can = add nuw nsw i64 %indvars.iv2228, 4
  %i.cao = mul nuw nsw i64 %i.can, %i.bzx
  %invariant.gep2527 = getelementptr [8 x i8], ptr %i.ak, i64 %i.cam
end_hunk_2

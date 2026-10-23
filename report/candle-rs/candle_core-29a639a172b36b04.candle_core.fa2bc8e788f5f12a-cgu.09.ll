Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.09?download=true
inline.NumInlined: 1250
inline.NumDeleted: 641
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils14make_qx_quants:bb.a
  %i.hi = add i32 %.sroa.0.0.i160.us.2, %1
  %i.hj = trunc i32 %i.hi to i8
  store i8 %i.hj, ptr %i.gf, align 1
  %i.hk = fdiv float %i.gy, %i.hb                 ; 2 uses
  %i.hl = fmul float %i.gy, %i.hk
  %i.hm = add i32 %.sroa.062.0237.us.2, 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us.2, %bb.x
  %.sroa.062.1.us.2 = phi i32 [ %i.hm, %bb.aa ], [ %.sroa.062.0237.us.2, %bb.z ], [ %.sroa.062.0237.us.2, %bb.y ], [ %.sroa.062.0237.us.2, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us.2 ], [ %.sroa.062.0237.us.2, %bb.x ] ; 2 uses
  %.sroa.041.6.us.2 = phi float [ %i.hl, %bb.aa ], [ %.sroa.041.3238.us.2, %bb.z ], [ %.sroa.041.3238.us.2, %bb.y ], [ %.sroa.041.3238.us.2, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us.2 ], [ %.sroa.041.3238.us.2, %bb.x ] ; 3 uses
  %.sroa.031.4.us.2 = phi float [ %i.hb, %bb.aa ], [ %.sroa.031.3239.us.2, %bb.z ], [ %.sroa.031.3239.us.2, %bb.y ], [ %.sroa.031.3239.us.2, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us.2 ], [ %.sroa.031.3239.us.2, %bb.x ] ; 2 uses
  %.sroa.021.4.us.2 = phi float [ %i.gy, %bb.aa ], [ %.sroa.021.3240.us.2, %bb.z ], [ %.sroa.021.3240.us.2, %bb.y ], [ %.sroa.021.3240.us.2, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us.2 ], [ %.sroa.021.3240.us.2, %bb.x ] ; 2 uses
  %.sroa.0.8.us.2 = phi float [ %i.hk, %bb.aa ], [ %.sroa.0.3241.us.2, %bb.z ], [ %.sroa.0.3241.us.2, %bb.y ], [ %.sroa.0.3241.us.2, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us.2 ], [ %.sroa.0.3241.us.2, %bb.x ] ; 3 uses
  %exitcond399.not.2 = icmp eq i64 %i.fz, %0
  br i1 %exitcond399.not.2, label %._crit_edge244.split.us285.2, label %.lr.ph243.us.2

._crit_edge244.split.us285.2:                     ; preds = %bb.ab
  %i.hn = icmp eq i32 %.sroa.062.1.us.2, 0
  br i1 %i.hn, label %.split293.us, label %.lr.ph243.us.3

.lr.ph243.us.3:                                   ; preds = %._crit_edge244.split.us285.2, %bb.aj
  %.sroa.0.3241.us.3 = phi float [ %.sroa.0.8.us.3, %bb.aj ], [ %.sroa.0.8.us.2, %._crit_edge244.split.us285.2 ] ; 4 uses
  %.sroa.021.3240.us.3 = phi float [ %.sroa.021.4.us.3, %bb.aj ], [ %.sroa.021.4.us.2, %._crit_edge244.split.us285.2 ] ; 7 uses
  %.sroa.031.3239.us.3 = phi float [ %.sroa.031.4.us.3, %bb.aj ], [ %.sroa.031.4.us.2, %._crit_edge244.split.us285.2 ] ; 6 uses
  %.sroa.041.3238.us.3 = phi float [ %.sroa.041.6.us.3, %bb.aj ], [ %.sroa.041.6.us.2, %._crit_edge244.split.us285.2 ] ; 4 uses
  %.sroa.062.0237.us.3 = phi i32 [ %.sroa.062.1.us.3, %bb.aj ], [ 0, %._crit_edge244.split.us285.2 ] ; 5 uses
  %.sroa.0113.0236.us284.3 = phi i64 [ %i.ho, %bb.aj ], [ 0, %._crit_edge244.split.us285.2 ] ; 4 uses
  %i.ho = add nuw i64 %.sroa.0113.0236.us284.3, 1 ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.0113.0236.us284.3
  %i.hq = load float, ptr %i.hp, align 4, !noundef !4 ; 4 uses
  br i1 %i.cs, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph243.us.3
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.0113.0236.us284.3
  %i.hs = load float, ptr %i.hr, align 4, !noundef !4
  br label %bb.af

bb.ad:                                            ; preds = %.lr.ph243.us.3
  br i1 %i.ct, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ht = fmul float %i.hq, %i.hq
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.sroa.066.0.us.3 = phi float [ %i.ht, %bb.ae ], [ %i.hs, %bb.ac ], [ 1.000000e+00, %bb.ad ] ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0113.0236.us284.3 ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 1, !noundef !4
  %i.hw = sext i8 %i.hv to i32
  %i.hx = sub i32 %i.hw, %1                       ; 2 uses
  %i.hy = fmul float %i.hq, %.sroa.066.0.us.3     ; 2 uses
  %i.hz = sitofp i32 %i.hx to float               ; 3 uses
  %i.ia = fmul float %i.hy, %i.hz
  %i.ib = fsub float %.sroa.021.3240.us.3, %i.ia  ; 3 uses
  %i.ic = fcmp ogt float %i.ib, 0.000000e+00
  br i1 %i.ic, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us.3, label %bb.aj

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us.3: ; preds = %bb.af
  %i.id = fmul float %.sroa.066.0.us.3, %i.hz
  %i.ie = fmul float %i.id, %i.hz
  %i.if = fsub float %.sroa.031.3239.us.3, %i.ie  ; 2 uses
  %i.ig = fmul float %i.hq, %i.if
  %i.ih = fdiv float %i.ig, %i.ib
  %i.ii = tail call float @llvm.round.f32(float %i.ih)
  %i.ij = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.ii) ; 2 uses
  %i.ik = icmp slt i32 %i.ij, %i.bf
  %..i159.us.3 = tail call i32 @llvm.smin.i32(i32 %i.ij, i32 %i.bg)
  %.sroa.0.0.i160.us.3 = select i1 %i.ik, i32 %i.bf, i32 %..i159.us.3 ; 3 uses
  %.not.us.3 = icmp eq i32 %.sroa.0.0.i160.us.3, %i.hx
  br i1 %.not.us.3, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us.3
  %i.il = sitofp i32 %.sroa.0.0.i160.us.3 to float ; 3 uses
  %i.im = fmul float %i.hy, %i.il
  %i.in = fadd float %i.ib, %i.im                 ; 5 uses
  %i.io = fmul float %.sroa.066.0.us.3, %i.il
  %i.ip = fmul float %i.io, %i.il
  %i.iq = fadd float %i.if, %i.ip                 ; 4 uses
  %i.ir = fcmp ogt float %i.iq, 0.000000e+00
  br i1 %i.ir, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.is = fmul float %i.in, %i.in
  %i.it = fmul float %.sroa.031.3239.us.3, %i.is
  %i.iu = fmul float %.sroa.021.3240.us.3, %.sroa.021.3240.us.3
  %i.iv = fmul float %i.iu, %i.iq
  %i.iw = fcmp ogt float %i.it, %i.iv
  br i1 %i.iw, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ix = add i32 %.sroa.0.0.i160.us.3, %1
  %i.iy = trunc i32 %i.ix to i8
  store i8 %i.iy, ptr %i.hu, align 1
  %i.iz = fdiv float %i.in, %i.iq                 ; 2 uses
  %i.ja = fmul float %i.in, %i.iz
  %i.jb = add i32 %.sroa.062.0237.us.3, 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us.3, %bb.af
  %.sroa.062.1.us.3 = phi i32 [ %i.jb, %bb.ai ], [ %.sroa.062.0237.us.3, %bb.ah ], [ %.sroa.062.0237.us.3, %bb.ag ], [ %.sroa.062.0237.us.3, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us.3 ], [ %.sroa.062.0237.us.3, %bb.af ] ; 2 uses
  %.sroa.041.6.us.3 = phi float [ %i.ja, %bb.ai ], [ %.sroa.041.3238.us.3, %bb.ah ], [ %.sroa.041.3238.us.3, %bb.ag ], [ %.sroa.041.3238.us.3, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us.3 ], [ %.sroa.041.3238.us.3, %bb.af ] ; 3 uses
  %.sroa.031.4.us.3 = phi float [ %i.iq, %bb.ai ], [ %.sroa.031.3239.us.3, %bb.ah ], [ %.sroa.031.3239.us.3, %bb.ag ], [ %.sroa.031.3239.us.3, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us.3 ], [ %.sroa.031.3239.us.3, %bb.af ] ; 2 uses
  %.sroa.021.4.us.3 = phi float [ %i.in, %bb.ai ], [ %.sroa.021.3240.us.3, %bb.ah ], [ %.sroa.021.3240.us.3, %bb.ag ], [ %.sroa.021.3240.us.3, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us.3 ], [ %.sroa.021.3240.us.3, %bb.af ] ; 2 uses
  %.sroa.0.8.us.3 = phi float [ %i.iz, %bb.ai ], [ %.sroa.0.3241.us.3, %bb.ah ], [ %.sroa.0.3241.us.3, %bb.ag ], [ %.sroa.0.3241.us.3, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us.3 ], [ %.sroa.0.3241.us.3, %bb.af ] ; 3 uses
  %exitcond399.not.3 = icmp eq i64 %i.ho, %0
  br i1 %exitcond399.not.3, label %._crit_edge244.split.us285.3, label %.lr.ph243.us.3

._crit_edge244.split.us285.3:                     ; preds = %bb.aj
  %i.jc = icmp eq i32 %.sroa.062.1.us.3, 0
  br i1 %i.jc, label %.split293.us, label %.lr.ph243.us.4

.lr.ph243.us.4:                                   ; preds = %._crit_edge244.split.us285.3, %bb.ar
  %.sroa.0.3241.us.4 = phi float [ %.sroa.0.8.us.4, %bb.ar ], [ %.sroa.0.8.us.3, %._crit_edge244.split.us285.3 ] ; 4 uses
  %.sroa.021.3240.us.4 = phi float [ %.sroa.021.4.us.4, %bb.ar ], [ %.sroa.021.4.us.3, %._crit_edge244.split.us285.3 ] ; 7 uses
  %.sroa.031.3239.us.4 = phi float [ %.sroa.031.4.us.4, %bb.ar ], [ %.sroa.031.4.us.3, %._crit_edge244.split.us285.3 ] ; 6 uses
  %.sroa.041.3238.us.4 = phi float [ %.sroa.041.6.us.4, %bb.ar ], [ %.sroa.041.6.us.3, %._crit_edge244.split.us285.3 ] ; 4 uses
  %.sroa.062.0237.us.4 = phi i32 [ %.sroa.062.1.us.4, %bb.ar ], [ 0, %._crit_edge244.split.us285.3 ] ; 5 uses
  %.sroa.0113.0236.us284.4 = phi i64 [ %i.jd, %bb.ar ], [ 0, %._crit_edge244.split.us285.3 ] ; 4 uses
  %i.jd = add nuw i64 %.sroa.0113.0236.us284.4, 1 ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.0113.0236.us284.4
  %i.jf = load float, ptr %i.je, align 4, !noundef !4 ; 4 uses
  br i1 %i.cs, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph243.us.4
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.0113.0236.us284.4
  %i.jh = load float, ptr %i.jg, align 4, !noundef !4
  br label %bb.an

bb.al:                                            ; preds = %.lr.ph243.us.4
  br i1 %i.ct, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ji = fmul float %i.jf, %i.jf
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %.sroa.066.0.us.4 = phi float [ %i.ji, %bb.am ], [ %i.jh, %bb.ak ], [ 1.000000e+00, %bb.al ] ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0113.0236.us284.4 ; 2 uses
  %i.jk = load i8, ptr %i.jj, align 1, !noundef !4
  %i.jl = sext i8 %i.jk to i32
  %i.jm = sub i32 %i.jl, %1                       ; 2 uses
  %i.jn = fmul float %i.jf, %.sroa.066.0.us.4     ; 2 uses
  %i.jo = sitofp i32 %i.jm to float               ; 3 uses
  %i.jp = fmul float %i.jn, %i.jo
  %i.jq = fsub float %.sroa.021.3240.us.4, %i.jp  ; 3 uses
  %i.jr = fcmp ogt float %i.jq, 0.000000e+00
  br i1 %i.jr, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us.4, label %bb.ar

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us.4: ; preds = %bb.an
  %i.js = fmul float %.sroa.066.0.us.4, %i.jo
  %i.jt = fmul float %i.js, %i.jo
  %i.ju = fsub float %.sroa.031.3239.us.4, %i.jt  ; 2 uses
  %i.jv = fmul float %i.jf, %i.ju
  %i.jw = fdiv float %i.jv, %i.jq
  %i.jx = tail call float @llvm.round.f32(float %i.jw)
  %i.jy = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.jx) ; 2 uses
  %i.jz = icmp slt i32 %i.jy, %i.bf
  %..i159.us.4 = tail call i32 @llvm.smin.i32(i32 %i.jy, i32 %i.bg)
  %.sroa.0.0.i160.us.4 = select i1 %i.jz, i32 %i.bf, i32 %..i159.us.4 ; 3 uses
  %.not.us.4 = icmp eq i32 %.sroa.0.0.i160.us.4, %i.jm
  br i1 %.not.us.4, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us.4
  %i.ka = sitofp i32 %.sroa.0.0.i160.us.4 to float ; 3 uses
  %i.kb = fmul float %i.jn, %i.ka
  %i.kc = fadd float %i.jq, %i.kb                 ; 5 uses
  %i.kd = fmul float %.sroa.066.0.us.4, %i.ka
  %i.ke = fmul float %i.kd, %i.ka
  %i.kf = fadd float %i.ju, %i.ke                 ; 4 uses
  %i.kg = fcmp ogt float %i.kf, 0.000000e+00
  br i1 %i.kg, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.kh = fmul float %i.kc, %i.kc
  %i.ki = fmul float %.sroa.031.3239.us.4, %i.kh
  %i.kj = fmul float %.sroa.021.3240.us.4, %.sroa.021.3240.us.4
  %i.kk = fmul float %i.kj, %i.kf
  %i.kl = fcmp ogt float %i.ki, %i.kk
  br i1 %i.kl, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.km = add i32 %.sroa.0.0.i160.us.4, %1
  %i.kn = trunc i32 %i.km to i8
  store i8 %i.kn, ptr %i.jj, align 1
  %i.ko = fdiv float %i.kc, %i.kf                 ; 2 uses
  %i.kp = fmul float %i.kc, %i.ko
  %i.kq = add i32 %.sroa.062.0237.us.4, 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us.4, %bb.an
  %.sroa.062.1.us.4 = phi i32 [ %i.kq, %bb.aq ], [ %.sroa.062.0237.us.4, %bb.ap ], [ %.sroa.062.0237.us.4, %bb.ao ], [ %.sroa.062.0237.us.4, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us.4 ], [ %.sroa.062.0237.us.4, %bb.an ]
  %.sroa.041.6.us.4 = phi float [ %i.kp, %bb.aq ], [ %.sroa.041.3238.us.4, %bb.ap ], [ %.sroa.041.3238.us.4, %bb.ao ], [ %.sroa.041.3238.us.4, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us.4 ], [ %.sroa.041.3238.us.4, %bb.an ] ; 2 uses
  %.sroa.031.4.us.4 = phi float [ %i.kf, %bb.aq ], [ %.sroa.031.3239.us.4, %bb.ap ], [ %.sroa.031.3239.us.4, %bb.ao ], [ %.sroa.031.3239.us.4, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us.4 ], [ %.sroa.031.3239.us.4, %bb.an ]
  %.sroa.021.4.us.4 = phi float [ %i.kc, %bb.aq ], [ %.sroa.021.3240.us.4, %bb.ap ], [ %.sroa.021.3240.us.4, %bb.ao ], [ %.sroa.021.3240.us.4, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us.4 ], [ %.sroa.021.3240.us.4, %bb.an ]
  %.sroa.0.8.us.4 = phi float [ %i.ko, %bb.aq ], [ %.sroa.0.3241.us.4, %bb.ap ], [ %.sroa.0.3241.us.4, %bb.ao ], [ %.sroa.0.3241.us.4, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit163.us.4 ], [ %.sroa.0.3241.us.4, %bb.an ] ; 2 uses
  %exitcond399.not.4 = icmp eq i64 %i.jd, %0
  br i1 %exitcond399.not.4, label %.split293.us, label %.lr.ph243.us.4

._crit_edge224:                                   ; preds = %bb.bl
  %6 = icmp eq i8 %spec.select, 0
  %7 = fcmp oeq float %i.vt, 0.000000e+00
  %or.cond.not = select i1 %6, i1 true, i1 %7
  br i1 %or.cond.not, label %.lr.ph243.us.preheader.preheader, label %bb.at

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139: ; preds = %.lr.ph223, %bb.bl
  %.sroa.045.0221 = phi float [ %i.vq, %bb.bl ], [ 0.000000e+00, %.lr.ph223 ]
  %.sroa.049.0220 = phi float [ %i.vt, %bb.bl ], [ 0.000000e+00, %.lr.ph223 ]
  %.sroa.053.0219 = phi i8 [ %spec.select, %bb.bl ], [ 0, %.lr.ph223 ]
  %.sroa.0107.0218 = phi i64 [ %i.kr, %bb.bl ], [ 0, %.lr.ph223 ] ; 4 uses
  %i.kr = add nuw i64 %.sroa.0107.0218, 1         ; 2 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.0107.0218
  %i.kt = load float, ptr %i.ks, align 4, !noundef !4 ; 4 uses
  %i.ku = fmul float %i.cu, %i.kt
  %i.kv = tail call float @llvm.round.f32(float %i.ku)
  %i.kw = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.kv) ; 2 uses
  %i.kx = icmp slt i32 %i.kw, %i.bf
  %..i135 = tail call i32 @llvm.smin.i32(i32 %i.kw, i32 %i.bg)
  %.sroa.0.0.i136 = select i1 %i.kx, i32 %i.bf, i32 %..i135 ; 2 uses
  %i.ky = add i32 %.sroa.0.0.i136, %1
  %i.kz = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0107.0218
  %i.la = load i8, ptr %i.kz, align 1, !noundef !4
  %i.lb = sext i8 %i.la to i32
  %.not127 = icmp eq i32 %i.ky, %i.lb
  %spec.select = select i1 %.not127, i8 %.sroa.053.0219, i8 1 ; 2 uses
  br i1 %i.cs, label %bb.bk, label %bb.bj

bb.as:                                            ; preds = %.lr.ph223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1376
  store i32 %i.bf, ptr %i.c, align 4, !noalias !1376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1376
  store i32 %i.bg, ptr %i.b, align 4, !noalias !1376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1376
  store ptr %i.c, ptr %i.a, align 8, !noalias !1376
  %.sroa.43.0..sroa_idx.i137 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsQ_NtNtCsf3Ta7LF998c_4core3fmt3numlNtB7_5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i137, align 8, !noalias !1376
  %i.lc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.lc, align 8, !noalias !1376
  %.sroa.47.0..sroa_idx.i138 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsQ_NtNtCsf3Ta7LF998c_4core3fmt3numlNtB7_5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i138, align 8, !noalias !1376
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @62, ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #32
  unreachable

bb.at:                                            ; preds = %._crit_edge224
  %i.ld = fmul float %i.vq, %i.vq
  %i.le = fmul float %i.cr, %i.vt
  %i.lf = fcmp ugt float %i.ld, %i.le
  br i1 %i.lf, label %.lr.ph229, label %.lr.ph243.us.preheader.preheader

.lr.ph243.us.preheader.preheader:                 ; preds = %._crit_edge224.1, %bb.ay, %._crit_edge224.2, %bb.bd, %._crit_edge230.2, %._crit_edge224, %bb.at
  %.sroa.0.1.us482.ph = phi float [ %i.mf, %bb.ay ], [ %i.mf, %._crit_edge224.1 ], [ %i.rt, %._crit_edge230.2 ], [ %i.oz, %._crit_edge224.2 ], [ %i.oz, %bb.bd ], [ %i.cq, %bb.at ], [ %i.cq, %._crit_edge224 ]
  %.sroa.021.2.us481.ph = phi float [ %i.vq, %bb.ay ], [ %i.vq, %._crit_edge224.1 ], [ %i.pt, %._crit_edge230.2 ], [ %i.mz, %._crit_edge224.2 ], [ %i.mz, %bb.bd ], [ %i.wa, %bb.at ], [ %i.wa, %._crit_edge224 ]
  %.sroa.031.2.us480.ph = phi float [ %i.vt, %bb.ay ], [ %i.vt, %._crit_edge224.1 ], [ %i.pw, %._crit_edge230.2 ], [ %i.nc, %._crit_edge224.2 ], [ %i.nc, %bb.bd ], [ %i.wd, %bb.at ], [ %i.wd, %._crit_edge224 ]
  %.sroa.041.1.us479.ph = phi float [ %i.mg, %bb.ay ], [ %i.mg, %._crit_edge224.1 ], [ %i.ru, %._crit_edge230.2 ], [ %i.pa, %._crit_edge224.2 ], [ %i.pa, %bb.bd ], [ %i.cr, %bb.at ], [ %i.cr, %._crit_edge224 ]
  br label %.lr.ph243.us

.lr.ph229:                                        ; preds = %bb.at
  %min.iters.check = icmp ult i64 %0, 4
  br i1 %min.iters.check, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph229
  %i.lg = getelementptr i8, ptr %3, i64 %0
  %i.lh = shl i64 %0, 2
  %i.li = getelementptr i8, ptr %2, i64 %i.lh
  %bound0 = icmp ult ptr %3, %i.li
  %bound1 = icmp ult ptr %2, %i.lg
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %0, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cu, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert487 = insertelement <4 x i32> poison, i32 %i.bf, i64 0
  %broadcast.splat488 = shufflevector <4 x i32> %broadcast.splatinsert487, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert489 = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %broadcast.splat490 = shufflevector <4 x i32> %broadcast.splatinsert489, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert491 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat492 = shufflevector <4 x i32> %broadcast.splatinsert491, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  %wide.load = load <4 x float>, ptr %i.lj, align 4, !alias.scope !1377
  %i.lk = fmul <4 x float> %broadcast.splat, %wide.load
  %i.ll = tail call <4 x float> @llvm.round.v4f32(<4 x float> %i.lk)
  %i.lm = tail call <4 x i32> @llvm.fptosi.sat.v4i32.v4f32(<4 x float> %i.ll) ; 2 uses
  %i.ln = icmp slt <4 x i32> %i.lm, %broadcast.splat488
  %i.lo = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.lm, <4 x i32> %broadcast.splat490)
  %i.lp = select <4 x i1> %i.ln, <4 x i32> %broadcast.splat488, <4 x i32> %i.lo
  %i.lq = add <4 x i32> %i.lp, %broadcast.splat492
  %i.lr = getelementptr inbounds nuw i8, ptr %3, i64 %index
  %i.ls = trunc <4 x i32> %i.lq to <4 x i8>
  store <4 x i8> %i.ls, ptr %i.lr, align 1, !alias.scope !1378, !noalias !1377
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lt = icmp eq i64 %index.next, %n.vec
  br i1 %i.lt, label %middle.block, label %vector.body, !llvm.loop !1355

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %0, %n.vec
  br i1 %cmp.n, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139.preheader.1, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.preheader

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.preheader: ; preds = %vector.memcheck, %.lr.ph229, %middle.block
  %.sroa.0109.0228.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph229 ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0109.0228.ph, 1
  %xtraiter615 = and i64 %0, 1
  %lcmp.mod616.not = icmp eq i64 %xtraiter615, 0
  br i1 %lcmp.mod616.not, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.prol.loopexit, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.prol

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.prol: ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.preheader
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.0109.0228.ph
  %i.lv = load float, ptr %i.lu, align 4, !noundef !4
  %i.lw = fmul float %i.cu, %i.lv
  %i.lx = tail call float @llvm.round.f32(float %i.lw)
  %i.ly = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.lx) ; 2 uses
  %i.lz = or disjoint i64 %.sroa.0109.0228.ph, 1
  %i.ma = icmp slt i32 %i.ly, %i.bf
  %..i141.prol = tail call i32 @llvm.smin.i32(i32 %i.ly, i32 %i.bg)
  %.sroa.0.0.i142.prol = select i1 %i.ma, i32 %i.bf, i32 %..i141.prol
  %i.mb = add i32 %.sroa.0.0.i142.prol, %1
  %i.mc = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0109.0228.ph
  %i.md = trunc i32 %i.mb to i8
  store i8 %i.md, ptr %i.mc, align 1
  br label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.prol.loopexit

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.prol.loopexit: ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.prol, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.preheader
  %.sroa.0109.0228.unr = phi i64 [ %.sroa.0109.0228.ph, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.preheader ], [ %i.lz, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.prol ]
  %i.me = icmp eq i64 %0, %.neg
  br i1 %i.me, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139.preheader.1, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139.preheader.1: ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.prol.loopexit, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145, %middle.block
  %i.mf = fdiv float %i.vq, %i.vt                 ; 4 uses
  %i.mg = fmul float %i.vq, %i.mf                 ; 3 uses
  %i.mh = fdiv float 1.000000e+00, %i.mf          ; 5 uses
  br label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139.1

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139.1: ; preds = %bb.ax, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139.preheader.1
  %.sroa.045.0221.1 = phi float [ %i.mz, %bb.ax ], [ 0.000000e+00, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139.preheader.1 ]
  %.sroa.049.0220.1 = phi float [ %i.nc, %bb.ax ], [ 0.000000e+00, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139.preheader.1 ]
  %.sroa.053.0219.1 = phi i8 [ %spec.select.1, %bb.ax ], [ 0, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139.preheader.1 ]
  %.sroa.0107.0218.1 = phi i64 [ %i.mi, %bb.ax ], [ 0, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139.preheader.1 ] ; 4 uses
  %i.mi = add nuw i64 %.sroa.0107.0218.1, 1       ; 2 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.0107.0218.1
  %i.mk = load float, ptr %i.mj, align 4, !noundef !4 ; 4 uses
  %i.ml = fmul float %i.mh, %i.mk
  %i.mm = tail call float @llvm.round.f32(float %i.ml)
  %i.mn = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.mm) ; 2 uses
  %i.mo = icmp slt i32 %i.mn, %i.bf
  %..i135.1 = tail call i32 @llvm.smin.i32(i32 %i.mn, i32 %i.bg)
  %.sroa.0.0.i136.1 = select i1 %i.mo, i32 %i.bf, i32 %..i135.1 ; 2 uses
  %i.mp = add i32 %.sroa.0.0.i136.1, %1
  %i.mq = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0107.0218.1
  %i.mr = load i8, ptr %i.mq, align 1, !noundef !4
  %i.ms = sext i8 %i.mr to i32
  %.not127.1 = icmp eq i32 %i.mp, %i.ms
  %spec.select.1 = select i1 %.not127.1, i8 %.sroa.053.0219.1, i8 1 ; 2 uses
  br i1 %i.cs, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139.1
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.0107.0218.1
  %i.mu = load float, ptr %i.mt, align 4, !noundef !4
  br label %bb.ax

bb.av:                                            ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139.1
  br i1 %i.ct, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.mv = fmul float %i.mk, %i.mk
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %.sroa.056.0.1 = phi float [ %i.mv, %bb.aw ], [ %i.mu, %bb.au ], [ 1.000000e+00, %bb.av ] ; 2 uses
  %i.mw = sitofp i32 %.sroa.0.0.i136.1 to float   ; 3 uses
  %i.mx = fmul float %i.mk, %.sroa.056.0.1
  %i.my = fmul float %i.mx, %i.mw
  %i.mz = fadd float %.sroa.045.0221.1, %i.my     ; 7 uses
  %i.na = fmul float %.sroa.056.0.1, %i.mw
  %i.nb = fmul float %i.na, %i.mw
  %i.nc = fadd float %.sroa.049.0220.1, %i.nb     ; 6 uses
  %exitcond396.1.not = icmp eq i64 %i.mi, %0
  br i1 %exitcond396.1.not, label %._crit_edge224.1, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139.1

._crit_edge224.1:                                 ; preds = %bb.ax
  %8 = icmp eq i8 %spec.select.1, 0
  %9 = fcmp oeq float %i.nc, 0.000000e+00
  %or.cond.not.1 = select i1 %8, i1 true, i1 %9
  br i1 %or.cond.not.1, label %.lr.ph243.us.preheader.preheader, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge224.1
  %i.nd = fmul float %i.mz, %i.mz
  %i.ne = fmul float %i.mg, %i.nc
  %i.nf = fcmp ugt float %i.nd, %i.ne
  br i1 %i.nf, label %.lr.ph229.1, label %.lr.ph243.us.preheader.preheader

.lr.ph229.1:                                      ; preds = %bb.ay
  %min.iters.check499 = icmp ult i64 %0, 4
  br i1 %min.iters.check499, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.1.preheader, label %vector.memcheck500

vector.memcheck500:                               ; preds = %.lr.ph229.1
  %i.ng = getelementptr i8, ptr %3, i64 %0
  %i.nh = shl i64 %0, 2
  %i.ni = getelementptr i8, ptr %2, i64 %i.nh
  %bound0501 = icmp ult ptr %3, %i.ni
  %bound1502 = icmp ult ptr %2, %i.ng
  %found.conflict503 = and i1 %bound0501, %bound1502
  br i1 %found.conflict503, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.1.preheader, label %vector.ph504

vector.ph504:                                     ; preds = %vector.memcheck500
  %n.vec505 = and i64 %0, -4                      ; 3 uses
  %broadcast.splatinsert506 = insertelement <4 x float> poison, float %i.mh, i64 0
  %broadcast.splat507 = shufflevector <4 x float> %broadcast.splatinsert506, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert508 = insertelement <4 x i32> poison, i32 %i.bf, i64 0
  %broadcast.splat509 = shufflevector <4 x i32> %broadcast.splatinsert508, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert510 = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %broadcast.splat511 = shufflevector <4 x i32> %broadcast.splatinsert510, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert512 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat513 = shufflevector <4 x i32> %broadcast.splatinsert512, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body514

vector.body514:                                   ; preds = %vector.body514, %vector.ph504
  %index515 = phi i64 [ 0, %vector.ph504 ], [ %index.next517, %vector.body514 ] ; 3 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index515
  %wide.load516 = load <4 x float>, ptr %i.nj, align 4, !alias.scope !1379
  %i.nk = fmul <4 x float> %broadcast.splat507, %wide.load516
  %i.nl = tail call <4 x float> @llvm.round.v4f32(<4 x float> %i.nk)
  %i.nm = tail call <4 x i32> @llvm.fptosi.sat.v4i32.v4f32(<4 x float> %i.nl) ; 2 uses
  %i.nn = icmp slt <4 x i32> %i.nm, %broadcast.splat509
  %i.no = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.nm, <4 x i32> %broadcast.splat511)
  %i.np = select <4 x i1> %i.nn, <4 x i32> %broadcast.splat509, <4 x i32> %i.no
  %i.nq = add <4 x i32> %i.np, %broadcast.splat513
  %i.nr = getelementptr inbounds nuw i8, ptr %3, i64 %index515
  %i.ns = trunc <4 x i32> %i.nq to <4 x i8>
  store <4 x i8> %i.ns, ptr %i.nr, align 1, !alias.scope !1380, !noalias !1379
  %index.next517 = add nuw i64 %index515, 4       ; 2 uses
  %i.nt = icmp eq i64 %index.next517, %n.vec505
  br i1 %i.nt, label %middle.block518, label %vector.body514, !llvm.loop !1359

middle.block518:                                  ; preds = %vector.body514
  %cmp.n519 = icmp eq i64 %0, %n.vec505
  br i1 %cmp.n519, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139.preheader.2, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.1.preheader

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.1.preheader: ; preds = %vector.memcheck500, %.lr.ph229.1, %middle.block518
  %.sroa.0109.0228.1.ph = phi i64 [ 0, %vector.memcheck500 ], [ 0, %.lr.ph229.1 ], [ %n.vec505, %middle.block518 ] ; 5 uses
  %.neg629 = or disjoint i64 %.sroa.0109.0228.1.ph, 1
  %xtraiter621 = and i64 %0, 1
  %lcmp.mod622.not = icmp eq i64 %xtraiter621, 0
  br i1 %lcmp.mod622.not, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.1.prol.loopexit, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.1.prol

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.1.prol: ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.1.preheader
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.0109.0228.1.ph
  %i.nv = load float, ptr %i.nu, align 4, !noundef !4
  %i.nw = fmul float %i.mh, %i.nv
  %i.nx = tail call float @llvm.round.f32(float %i.nw)
  %i.ny = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.nx) ; 2 uses
  %i.nz = or disjoint i64 %.sroa.0109.0228.1.ph, 1
  %i.oa = icmp slt i32 %i.ny, %i.bf
  %..i141.1.prol = tail call i32 @llvm.smin.i32(i32 %i.ny, i32 %i.bg)
  %.sroa.0.0.i142.1.prol = select i1 %i.oa, i32 %i.bf, i32 %..i141.1.prol
  %i.ob = add i32 %.sroa.0.0.i142.1.prol, %1
  %i.oc = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0109.0228.1.ph
  %i.od = trunc i32 %i.ob to i8
  store i8 %i.od, ptr %i.oc, align 1
  br label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.1.prol.loopexit

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.1.prol.loopexit: ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.1.prol, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.1.preheader
  %.sroa.0109.0228.1.unr = phi i64 [ %.sroa.0109.0228.1.ph, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.1.preheader ], [ %i.nz, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.1.prol ]
  %i.oe = icmp eq i64 %0, %.neg629
  br i1 %i.oe, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139.preheader.2, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.1

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.1: ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.1.prol.loopexit, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.1
  %.sroa.0109.0228.1 = phi i64 [ %i.ou, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.1 ], [ %.sroa.0109.0228.1.unr, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.1.prol.loopexit ] ; 4 uses
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.0109.0228.1
  %i.og = load float, ptr %i.of, align 4, !noundef !4
  %i.oh = fmul float %i.mh, %i.og
  %i.oi = tail call float @llvm.round.f32(float %i.oh)
  %i.oj = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.oi) ; 2 uses
  %i.ok = add nuw i64 %.sroa.0109.0228.1, 1       ; 2 uses
  %i.ol = icmp slt i32 %i.oj, %i.bf
  %..i141.1 = tail call i32 @llvm.smin.i32(i32 %i.oj, i32 %i.bg)
  %.sroa.0.0.i142.1 = select i1 %i.ol, i32 %i.bf, i32 %..i141.1
  %i.om = add i32 %.sroa.0.0.i142.1, %1
  %i.on = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0109.0228.1
  %i.oo = trunc i32 %i.om to i8
  store i8 %i.oo, ptr %i.on, align 1
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ok
  %i.oq = load float, ptr %i.op, align 4, !noundef !4
  %i.or = fmul float %i.mh, %i.oq
  %i.os = tail call float @llvm.round.f32(float %i.or)
  %i.ot = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.os) ; 2 uses
  %i.ou = add nuw i64 %.sroa.0109.0228.1, 2       ; 2 uses
  %i.ov = icmp slt i32 %i.ot, %i.bf
  %..i141.1.1 = tail call i32 @llvm.smin.i32(i32 %i.ot, i32 %i.bg)
  %.sroa.0.0.i142.1.1 = select i1 %i.ov, i32 %i.bf, i32 %..i141.1.1
  %i.ow = add i32 %.sroa.0.0.i142.1.1, %1
  %i.ox = getelementptr inbounds nuw i8, ptr %3, i64 %i.ok
  %i.oy = trunc i32 %i.ow to i8
  store i8 %i.oy, ptr %i.ox, align 1
  %exitcond397.1.not.1 = icmp eq i64 %i.ou, %0
  br i1 %exitcond397.1.not.1, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139.preheader.2, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.1, !llvm.loop !1360

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139.preheader.2: ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.1.prol.loopexit, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.1, %middle.block518
  %i.oz = fdiv float %i.mz, %i.nc                 ; 4 uses
  %i.pa = fmul float %i.mz, %i.oz                 ; 3 uses
  %i.pb = fdiv float 1.000000e+00, %i.oz          ; 5 uses
  br label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139.2

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139.2: ; preds = %bb.bc, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139.preheader.2
  %.sroa.045.0221.2 = phi float [ %i.pt, %bb.bc ], [ 0.000000e+00, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139.preheader.2 ]
  %.sroa.049.0220.2 = phi float [ %i.pw, %bb.bc ], [ 0.000000e+00, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139.preheader.2 ]
  %.sroa.053.0219.2 = phi i8 [ %spec.select.2, %bb.bc ], [ 0, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139.preheader.2 ]
  %.sroa.0107.0218.2 = phi i64 [ %i.pc, %bb.bc ], [ 0, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139.preheader.2 ] ; 4 uses
  %i.pc = add nuw i64 %.sroa.0107.0218.2, 1       ; 2 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.0107.0218.2
  %i.pe = load float, ptr %i.pd, align 4, !noundef !4 ; 4 uses
  %i.pf = fmul float %i.pb, %i.pe
  %i.pg = tail call float @llvm.round.f32(float %i.pf)
  %i.ph = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.pg) ; 2 uses
  %i.pi = icmp slt i32 %i.ph, %i.bf
  %..i135.2 = tail call i32 @llvm.smin.i32(i32 %i.ph, i32 %i.bg)
  %.sroa.0.0.i136.2 = select i1 %i.pi, i32 %i.bf, i32 %..i135.2 ; 2 uses
  %i.pj = add i32 %.sroa.0.0.i136.2, %1
  %i.pk = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0107.0218.2
  %i.pl = load i8, ptr %i.pk, align 1, !noundef !4
  %i.pm = sext i8 %i.pl to i32
  %.not127.2 = icmp eq i32 %i.pj, %i.pm
  %spec.select.2 = select i1 %.not127.2, i8 %.sroa.053.0219.2, i8 1 ; 2 uses
  br i1 %i.cs, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139.2
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.sroa.0107.0218.2
  %i.po = load float, ptr %i.pn, align 4, !noundef !4
  br label %bb.bc

bb.ba:                                            ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139.2
  br i1 %i.ct, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.pp = fmul float %i.pe, %i.pe
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %.sroa.056.0.2 = phi float [ %i.pp, %bb.bb ], [ %i.po, %bb.az ], [ 1.000000e+00, %bb.ba ] ; 2 uses
  %i.pq = sitofp i32 %.sroa.0.0.i136.2 to float   ; 3 uses
  %i.pr = fmul float %i.pe, %.sroa.056.0.2
  %i.ps = fmul float %i.pr, %i.pq
  %i.pt = fadd float %.sroa.045.0221.2, %i.ps     ; 6 uses
  %i.pu = fmul float %.sroa.056.0.2, %i.pq
  %i.pv = fmul float %i.pu, %i.pq
  %i.pw = fadd float %.sroa.049.0220.2, %i.pv     ; 5 uses
  %exitcond396.2.not = icmp eq i64 %i.pc, %0
  br i1 %exitcond396.2.not, label %._crit_edge224.2, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139.2

._crit_edge224.2:                                 ; preds = %bb.bc
  %10 = icmp eq i8 %spec.select.2, 0
  %11 = fcmp oeq float %i.pw, 0.000000e+00
  %or.cond.not.2 = select i1 %10, i1 true, i1 %11
  br i1 %or.cond.not.2, label %.lr.ph243.us.preheader.preheader, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge224.2
  %i.px = fmul float %i.pt, %i.pt
  %i.py = fmul float %i.pa, %i.pw
  %i.pz = fcmp ugt float %i.px, %i.py
  br i1 %i.pz, label %.lr.ph229.2, label %.lr.ph243.us.preheader.preheader

.lr.ph229.2:                                      ; preds = %bb.bd
  %min.iters.check527 = icmp ult i64 %0, 4
  br i1 %min.iters.check527, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2.preheader, label %vector.memcheck528

vector.memcheck528:                               ; preds = %.lr.ph229.2
  %i.qa = getelementptr i8, ptr %3, i64 %0
  %i.qb = shl i64 %0, 2
  %i.qc = getelementptr i8, ptr %2, i64 %i.qb
  %bound0529 = icmp ult ptr %3, %i.qc
  %bound1530 = icmp ult ptr %2, %i.qa
  %found.conflict531 = and i1 %bound0529, %bound1530
  br i1 %found.conflict531, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2.preheader, label %vector.ph532

vector.ph532:                                     ; preds = %vector.memcheck528
  %n.vec533 = and i64 %0, -4                      ; 3 uses
  %broadcast.splatinsert534 = insertelement <4 x float> poison, float %i.pb, i64 0
  %broadcast.splat535 = shufflevector <4 x float> %broadcast.splatinsert534, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert536 = insertelement <4 x i32> poison, i32 %i.bf, i64 0
  %broadcast.splat537 = shufflevector <4 x i32> %broadcast.splatinsert536, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert538 = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %broadcast.splat539 = shufflevector <4 x i32> %broadcast.splatinsert538, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert540 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat541 = shufflevector <4 x i32> %broadcast.splatinsert540, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body542

vector.body542:                                   ; preds = %vector.body542, %vector.ph532
  %index543 = phi i64 [ 0, %vector.ph532 ], [ %index.next545, %vector.body542 ] ; 3 uses
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index543
  %wide.load544 = load <4 x float>, ptr %i.qd, align 4, !alias.scope !1381
  %i.qe = fmul <4 x float> %broadcast.splat535, %wide.load544
  %i.qf = tail call <4 x float> @llvm.round.v4f32(<4 x float> %i.qe)
  %i.qg = tail call <4 x i32> @llvm.fptosi.sat.v4i32.v4f32(<4 x float> %i.qf) ; 2 uses
  %i.qh = icmp slt <4 x i32> %i.qg, %broadcast.splat537
  %i.qi = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.qg, <4 x i32> %broadcast.splat539)
  %i.qj = select <4 x i1> %i.qh, <4 x i32> %broadcast.splat537, <4 x i32> %i.qi
  %i.qk = add <4 x i32> %i.qj, %broadcast.splat541
  %i.ql = getelementptr inbounds nuw i8, ptr %3, i64 %index543
  %i.qm = trunc <4 x i32> %i.qk to <4 x i8>
  store <4 x i8> %i.qm, ptr %i.ql, align 1, !alias.scope !1382, !noalias !1381
  %index.next545 = add nuw i64 %index543, 4       ; 2 uses
  %i.qn = icmp eq i64 %index.next545, %n.vec533
  br i1 %i.qn, label %middle.block546, label %vector.body542, !llvm.loop !1364

middle.block546:                                  ; preds = %vector.body542
  %cmp.n547 = icmp eq i64 %0, %n.vec533
  br i1 %cmp.n547, label %._crit_edge230.2, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2.preheader

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2.preheader: ; preds = %vector.memcheck528, %.lr.ph229.2, %middle.block546
  %.sroa.0109.0228.2.ph = phi i64 [ 0, %vector.memcheck528 ], [ 0, %.lr.ph229.2 ], [ %n.vec533, %middle.block546 ] ; 5 uses
  %.neg630 = or disjoint i64 %.sroa.0109.0228.2.ph, 1
  %xtraiter623 = and i64 %0, 1
  %lcmp.mod624.not = icmp eq i64 %xtraiter623, 0
  br i1 %lcmp.mod624.not, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2.prol.loopexit, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2.prol

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2.prol: ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2.preheader
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.0109.0228.2.ph
  %i.qp = load float, ptr %i.qo, align 4, !noundef !4
  %i.qq = fmul float %i.pb, %i.qp
  %i.qr = tail call float @llvm.round.f32(float %i.qq)
  %i.qs = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.qr) ; 2 uses
  %i.qt = or disjoint i64 %.sroa.0109.0228.2.ph, 1
  %i.qu = icmp slt i32 %i.qs, %i.bf
  %..i141.2.prol = tail call i32 @llvm.smin.i32(i32 %i.qs, i32 %i.bg)
  %.sroa.0.0.i142.2.prol = select i1 %i.qu, i32 %i.bf, i32 %..i141.2.prol
  %i.qv = add i32 %.sroa.0.0.i142.2.prol, %1
  %i.qw = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0109.0228.2.ph
  %i.qx = trunc i32 %i.qv to i8
  store i8 %i.qx, ptr %i.qw, align 1
  br label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2.prol.loopexit

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2.prol.loopexit: ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2.prol, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2.preheader
  %.sroa.0109.0228.2.unr = phi i64 [ %.sroa.0109.0228.2.ph, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2.preheader ], [ %i.qt, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2.prol ]
  %i.qy = icmp eq i64 %0, %.neg630
  br i1 %i.qy, label %._crit_edge230.2, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2: ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2.prol.loopexit, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2
  %.sroa.0109.0228.2 = phi i64 [ %i.ro, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2 ], [ %.sroa.0109.0228.2.unr, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2.prol.loopexit ] ; 4 uses
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.0109.0228.2
  %i.ra = load float, ptr %i.qz, align 4, !noundef !4
  %i.rb = fmul float %i.pb, %i.ra
  %i.rc = tail call float @llvm.round.f32(float %i.rb)
  %i.rd = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.rc) ; 2 uses
  %i.re = add nuw i64 %.sroa.0109.0228.2, 1       ; 2 uses
  %i.rf = icmp slt i32 %i.rd, %i.bf
  %..i141.2 = tail call i32 @llvm.smin.i32(i32 %i.rd, i32 %i.bg)
  %.sroa.0.0.i142.2 = select i1 %i.rf, i32 %i.bf, i32 %..i141.2
  %i.rg = add i32 %.sroa.0.0.i142.2, %1
  %i.rh = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0109.0228.2
  %i.ri = trunc i32 %i.rg to i8
  store i8 %i.ri, ptr %i.rh, align 1
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.re
  %i.rk = load float, ptr %i.rj, align 4, !noundef !4
  %i.rl = fmul float %i.pb, %i.rk
  %i.rm = tail call float @llvm.round.f32(float %i.rl)
  %i.rn = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.rm) ; 2 uses
  %i.ro = add nuw i64 %.sroa.0109.0228.2, 2       ; 2 uses
  %i.rp = icmp slt i32 %i.rn, %i.bf
  %..i141.2.1 = tail call i32 @llvm.smin.i32(i32 %i.rn, i32 %i.bg)
  %.sroa.0.0.i142.2.1 = select i1 %i.rp, i32 %i.bf, i32 %..i141.2.1
  %i.rq = add i32 %.sroa.0.0.i142.2.1, %1
  %i.rr = getelementptr inbounds nuw i8, ptr %3, i64 %i.re
  %i.rs = trunc i32 %i.rq to i8
  store i8 %i.rs, ptr %i.rr, align 1
  %exitcond397.2.not.1 = icmp eq i64 %i.ro, %0
  br i1 %exitcond397.2.not.1, label %._crit_edge230.2, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2, !llvm.loop !1365

._crit_edge230.2:                                 ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2.prol.loopexit, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.2, %middle.block546
  %i.rt = fdiv float %i.pt, %i.pw                 ; 2 uses
  %i.ru = fmul float %i.pt, %i.rt
  br label %.lr.ph243.us.preheader.preheader

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145: ; preds = %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.prol.loopexit, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145
  %.sroa.0109.0228 = phi i64 [ %i.sk, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145 ], [ %.sroa.0109.0228.unr, %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145.prol.loopexit ] ; 4 uses
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.0109.0228
  %i.rw = load float, ptr %i.rv, align 4, !noundef !4
  %i.rx = fmul float %i.cu, %i.rw
  %i.ry = tail call float @llvm.round.f32(float %i.rx)
  %i.rz = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.ry) ; 2 uses
  %i.sa = add nuw i64 %.sroa.0109.0228, 1         ; 2 uses
  %i.sb = icmp slt i32 %i.rz, %i.bf
  %..i141 = tail call i32 @llvm.smin.i32(i32 %i.rz, i32 %i.bg)
  %.sroa.0.0.i142 = select i1 %i.sb, i32 %i.bf, i32 %..i141
  %i.sc = add i32 %.sroa.0.0.i142, %1
  %i.sd = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0109.0228
  %i.se = trunc i32 %i.sc to i8
  store i8 %i.se, ptr %i.sd, align 1
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.sa
  %i.sg = load float, ptr %i.sf, align 4, !noundef !4
  %i.sh = fmul float %i.cu, %i.sg
  %i.si = tail call float @llvm.round.f32(float %i.sh)
  %i.sj = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.si) ; 2 uses
  %i.sk = add nuw i64 %.sroa.0109.0228, 2         ; 2 uses
  %i.sl = icmp slt i32 %i.sj, %i.bf
  %..i141.1618 = tail call i32 @llvm.smin.i32(i32 %i.sj, i32 %i.bg)
  %.sroa.0.0.i142.1619 = select i1 %i.sl, i32 %i.bf, i32 %..i141.1618
  %i.sm = add i32 %.sroa.0.0.i142.1619, %1
  %i.sn = getelementptr inbounds nuw i8, ptr %3, i64 %i.sa
  %i.so = trunc i32 %i.sm to i8
  store i8 %i.so, ptr %i.sn, align 1
  %exitcond397.not.1 = icmp eq i64 %i.sk, %0
  br i1 %exitcond397.not.1, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit139.preheader.1, label %_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit145, !llvm.loop !1366

.split293.us:                                     ; preds = %bb.ar, %._crit_edge244.split.us285.3, %._crit_edge244.split.us285.2, %._crit_edge244.split.us285.1, %._crit_edge244.split.us285
  %.sroa.041.6.us.lcssa.lcssa = phi float [ %.sroa.041.6.us, %._crit_edge244.split.us285 ], [ %.sroa.041.6.us.1, %._crit_edge244.split.us285.1 ], [ %.sroa.041.6.us.2, %._crit_edge244.split.us285.2 ], [ %.sroa.041.6.us.3, %._crit_edge244.split.us285.3 ], [ %.sroa.041.6.us.4, %bb.ar ]
  %.sroa.0.8.us.lcssa.lcssa = phi float [ %.sroa.0.8.us, %._crit_edge244.split.us285 ], [ %.sroa.0.8.us.1, %._crit_edge244.split.us285.1 ], [ %.sroa.0.8.us.2, %._crit_edge244.split.us285.2 ], [ %.sroa.0.8.us.3, %._crit_edge244.split.us285.3 ], [ %.sroa.0.8.us.4, %bb.ar ] ; 2 uses
  %i.sp = icmp slt i32 %4, 3
  br i1 %i.sp, label %.loopexit, label %.outer.preheader

.outer.preheader:                                 ; preds = %.split293.us
  %scevgep = getelementptr i8, ptr %3, i64 %0
  %i.sq = shl i64 %0, 2
  %scevgep550 = getelementptr i8, ptr %2, i64 %i.sq
  %min.iters.check555 = icmp ult i64 %0, 4
  %bound0551 = icmp ult ptr %3, %scevgep550
  %bound1552 = icmp ult ptr %2, %scevgep
  %found.conflict553 = and i1 %bound0551, %bound1552
  %n.vec557 = and i64 %0, -4                      ; 3 uses
  %broadcast.splatinsert560 = insertelement <4 x i32> poison, i32 %i.bf, i64 0
  %broadcast.splat561 = shufflevector <4 x i32> %broadcast.splatinsert560, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert562 = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %broadcast.splat563 = shufflevector <4 x i32> %broadcast.splatinsert562, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert564 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat565 = shufflevector <4 x i32> %broadcast.splatinsert564, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n571 = icmp eq i64 %0, %n.vec557
  %xtraiter625 = and i64 %0, 1
  %lcmp.mod626.not = icmp eq i64 %xtraiter625, 0
  br label %.lr.ph361

.loopexit:                                        ; preds = %._crit_edge362.thread, %bb.a, %.lr.ph372.preheader, %._crit_edge370, %.split293.us
  %.sroa.0.5 = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.0.8.us.lcssa.lcssa, %.split293.us ], [ %i.bj, %._crit_edge370 ], [ 0.000000e+00, %.lr.ph372.preheader ], [ %.sroa.0.6, %._crit_edge362.thread ]
  ret float %.sroa.0.5

._crit_edge362:                                   ; preds = %bb.bh
  %i.sr = fcmp ogt float %i.vj, 0.000000e+00
  br i1 %i.sr, label %bb.be, label %._crit_edge362.thread

_RNvXs1d_NtNtCsf3Ta7LF998c_4core3cmp5implslNtB8_3Ord5clamp.exit151: ; preds = %.lr.ph361, %bb.bh
  %.sroa.082.0359 = phi float [ %i.vg, %bb.bh ], [ 0.000000e+00, %.lr.ph361 ]
  %.sroa.087.0358 = phi float [ %i.vj, %bb.bh ], [ 0.000000e+00, %.lr.ph361 ]
  %.sroa.0117.0357 = phi i64 [ %i.ss, %bb.bh ], [ 0, %.lr.ph361 ] ; 3 uses
  %i.ss = add nuw i64 %.sroa.0117.0357, 1         ; 2 uses
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.0117.0357
  %i.su = load float, ptr %i.st, align 4, !noundef !4 ; 4 uses
  %i.sv = fmul float %i.ue, %i.su
  %i.sw = tail call float @llvm.round.f32(float %i.sv)
  %i.sx = tail call i32 @llvm.fptosi.sat.i32.f32(float %i.sw) ; 2 uses
  %i.sy = icmp slt i32 %i.sx, %i.bf
  %..i147 = tail call i32 @llvm.smin.i32(i32 %i.sx, i32 %i.bg)
  %.sroa.0.0.i148 = select i1 %i.sy, i32 %i.bf, i32 %..i147
  br i1 %i.cs, label %bb.bg, label %bb.bf

bb.be:                                            ; preds = %._crit_edge362
  %i.sz = fmul float %i.vg, %i.vg
end_hunk_0

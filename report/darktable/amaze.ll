Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/amaze?download=true
inline.NumInlined: 126
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 42
begin_hunk_0_@amaze_demosaic:bb.a
bb.fq:                                            ; preds = %bb.fo, %bb.fm, %bb.fp, %bb.fn
  %i.hyb = phi reassoc nsz arcp contract afn float [ %.3580, %bb.fp ], [ %i.hxu, %bb.fm ], [ %.3578, %bb.fn ], [ %i.hxv, %bb.fo ] ; 2 uses
  %i.hyc = fsub reassoc nsz arcp contract afn float %i.hxa, %i.hyb
  %i.hyd = fmul reassoc nsz arcp contract afn float %i.hyc, %.sroa.0.0.i3675
  %i.hye = fdiv reassoc nsz arcp contract afn float %i.hyd, %i.hxt
  %i.hyf = fadd reassoc nsz arcp contract afn float %i.hye, %i.hyb
  br label %.sink.split4587

.sink.split4587:                                  ; preds = %bb.fi, %bb.fk, %bb.fh, %bb.fj, %bb.fq
  %.sink4589 = phi float [ %i.hyf, %bb.fq ], [ %.3576, %bb.fk ], [ %i.hxh, %bb.fh ], [ %.3574, %bb.fi ], [ %i.hxi, %bb.fj ] ; 2 uses
  store float %.sink4589, ptr %i.hqx, align 4, !tbaa !13
  br label %bb.fr

bb.fr:                                            ; preds = %.sink.split4587, %bb.fe
  %i.hyg = phi float [ %i.hxa, %bb.fe ], [ %.sink4589, %.sink.split4587 ] ; 5 uses
  %i.hyh = load float, ptr %i.hrd, align 4, !tbaa !13 ; 5 uses
  %i.hyi = fcmp reassoc nsz arcp contract afn ogt float %i.hyh, %5
  br i1 %i.hyi, label %bb.fs, label %bb.fy

bb.fs:                                            ; preds = %bb.fr
  %i.hyj = load float, ptr %i.hmg, align 4, !tbaa !13 ; 5 uses
  %i.hyk = load float, ptr %i.hmi, align 4, !tbaa !13 ; 5 uses
  %i.hyl = fcmp reassoc nsz arcp contract afn olt float %i.hyj, %i.hyk
  br i1 %i.hyl, label %bb.ft, label %bb.fv

bb.ft:                                            ; preds = %bb.fs
  %i.hym = fcmp reassoc nsz arcp contract afn olt float %i.hyh, %i.hyk
  %.3582 = select reassoc nsz arcp contract afn i1 %i.hym, float %i.hyh, float %i.hyk ; 2 uses
  %i.hyn = fcmp reassoc nsz arcp contract afn ogt float %i.hyj, %.3582
  br i1 %i.hyn, label %bb.fx, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  br label %bb.fx

bb.fv:                                            ; preds = %bb.fs
  %i.hyo = fcmp reassoc nsz arcp contract afn olt float %i.hyh, %i.hyj
  %.3584 = select reassoc nsz arcp contract afn i1 %i.hyo, float %i.hyh, float %i.hyj ; 2 uses
  %i.hyp = fcmp reassoc nsz arcp contract afn ogt float %i.hyk, %.3584
  br i1 %i.hyp, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fv, %bb.ft, %bb.fw, %bb.fu
  %i.hyq = phi reassoc nsz arcp contract afn float [ %.3584, %bb.fw ], [ %i.hyj, %bb.ft ], [ %.3582, %bb.fu ], [ %i.hyk, %bb.fv ]
  store float %i.hyq, ptr %i.hrd, align 4, !tbaa !13
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fr
  %i.hyr = fcmp reassoc nsz arcp contract afn ogt float %i.hyg, %5
  br i1 %i.hyr, label %bb.fz, label %bb.gf

bb.fz:                                            ; preds = %bb.fy
  %i.hys = load float, ptr %i.hmj, align 4, !tbaa !13 ; 5 uses
  %i.hyt = load float, ptr %i.hmk, align 4, !tbaa !13 ; 5 uses
  %i.hyu = fcmp reassoc nsz arcp contract afn olt float %i.hys, %i.hyt
  br i1 %i.hyu, label %bb.ga, label %bb.gc

bb.ga:                                            ; preds = %bb.fz
  %i.hyv = fcmp reassoc nsz arcp contract afn olt float %i.hyg, %i.hyt
  %.3586 = select reassoc nsz arcp contract afn i1 %i.hyv, float %i.hyg, float %i.hyt ; 2 uses
  %i.hyw = fcmp reassoc nsz arcp contract afn ogt float %i.hys, %.3586
  br i1 %i.hyw, label %bb.ge, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  br label %bb.ge

bb.gc:                                            ; preds = %bb.fz
  %i.hyx = fcmp reassoc nsz arcp contract afn olt float %i.hyg, %i.hys
  %.3588 = select reassoc nsz arcp contract afn i1 %i.hyx, float %i.hyg, float %i.hys ; 2 uses
  %i.hyy = fcmp reassoc nsz arcp contract afn ogt float %i.hyt, %.3588
  br i1 %i.hyy, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gc, %bb.ga, %bb.gd, %bb.gb
  %i.hyz = phi reassoc nsz arcp contract afn float [ %.3588, %bb.gd ], [ %i.hys, %bb.ga ], [ %.3586, %bb.gb ], [ %i.hyt, %bb.gc ]
  store float %i.hyz, ptr %i.hqx, align 4, !tbaa !13
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.fy
  %i.hza = add nuw nsw i32 %.031744040, 2         ; 2 uses
  %indvars.iv.next4287 = add nuw nsw i64 %indvars.iv4286, 1
  %i.hzb = icmp slt i32 %i.hza, %i.hhk
  br i1 %i.hzb, label %.lr.ph4044, label %._crit_edge4045, !llvm.loop !357

.preheader3863:                                   ; preds = %._crit_edge4053
  br i1 %i.dc, label %.lr.ph4063, label %.preheader3862

.lr.ph4063:                                       ; preds = %.preheader3863
  %i.hzc = add nsw i32 %i.in, -12                 ; 2 uses
  %i.hzd = add i32 %i.il, -9
  %i.hze = add i32 %i.il, -9
  %i.hzf = add i32 %i.il, -9
  br label %bb.gj

bb.gg:                                            ; preds = %.lr.ph4055, %._crit_edge4053
  %indvars.iv4291 = phi i32 [ 1610, %.lr.ph4055 ], [ %indvars.iv.next4292, %._crit_edge4053 ] ; 2 uses
  %.031674054 = phi i32 [ 10, %.lr.ph4055 ], [ %i.hzp, %._crit_edge4053 ] ; 2 uses
  %i.hzg = shl i32 %.031674054, 2
  %i.hzh = and i32 %i.hzg, 28
  %i.hzi = lshr i32 %4, %i.hzh
  %i.hzj = and i32 %i.hzi, 1                      ; 2 uses
  %i.hzk = or disjoint i32 %i.hzj, 10             ; 2 uses
  %i.hzl = icmp slt i32 %i.hzk, %i.hkx
  br i1 %i.hzl, label %.lr.ph4052.preheader, label %._crit_edge4053

.lr.ph4052.preheader:                             ; preds = %bb.gg
  %i.hzm = or disjoint i32 %indvars.iv4291, %i.hzj
  %i.hzn = zext i32 %i.hzm to i64                 ; 2 uses
  %i.hzo = lshr i64 %i.hzn, 1
  br label %.lr.ph4052

._crit_edge4053:                                  ; preds = %bb.gi, %bb.gg
  %i.hzp = add nuw nsw i32 %.031674054, 1         ; 2 uses
  %i.hzq = icmp slt i32 %i.hzp, %i.cz
  %indvars.iv.next4292 = add i32 %indvars.iv4291, 160
  br i1 %i.hzq, label %bb.gg, label %.preheader3863, !llvm.loop !358

.lr.ph4052:                                       ; preds = %.lr.ph4052.preheader, %bb.gi
  %indvars.iv4295 = phi i64 [ %i.hzn, %.lr.ph4052.preheader ], [ %indvars.iv.next4296, %bb.gi ] ; 5 uses
  %indvars.iv4293 = phi i64 [ %i.hzo, %.lr.ph4052.preheader ], [ %indvars.iv.next4294, %bb.gi ] ; 5 uses
  %.031664048 = phi i32 [ %i.hzk, %.lr.ph4052.preheader ], [ %i.ibp, %bb.gi ]
  %i.hzr = trunc nuw i64 %indvars.iv4295 to i32   ; 2 uses
  %i.hzs = add nsw i32 %i.hzr, -161
  %i.hzt = ashr i32 %i.hzs, 1
  %i.hzu = sext i32 %i.hzt to i64
  %i.hzv = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.hzu
  %i.hzw = load float, ptr %i.hzv, align 4, !tbaa !13
  %i.hzx = add nsw i32 %i.hzr, -159
  %i.hzy = ashr i32 %i.hzx, 1
  %i.hzz = sext i32 %i.hzy to i64
  %i.iaa = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.hzz
  %i.iab = load float, ptr %i.iaa, align 4, !tbaa !13
  %i.iac = fadd reassoc nsz arcp contract afn float %i.iab, %i.hzw
  %i.iad = add nuw i64 %indvars.iv4295, 159
  %i.iae = lshr i64 %i.iad, 1
  %i.iaf = and i64 %i.iae, 2147483647
  %i.iag = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.iaf
  %i.iah = load float, ptr %i.iag, align 4, !tbaa !13
  %i.iai = fadd reassoc nsz arcp contract afn float %i.iac, %i.iah
  %i.iaj = add nuw i64 %indvars.iv4295, 161
  %i.iak = lshr i64 %i.iaj, 1
  %i.ial = and i64 %i.iak, 2147483647
  %i.iam = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ial
  %i.ian = load float, ptr %i.iam, align 4, !tbaa !13
  %i.iao = fadd reassoc nsz arcp contract afn float %i.iai, %i.ian ; 3 uses
  %.not.i3677 = fcmp oeq float %i.iao, 0.000000e+00
  %i.iap = bitcast float %i.iao to i32
  %i.iaq = add i32 %i.iap, -16777216
  %i.iar = bitcast i32 %i.iaq to float
  %.sroa.0.0.i3678 = select nsz i1 %.not.i3677, float %i.iao, float %i.iar ; 3 uses
  %i.ias = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv4293 ; 2 uses
  %i.iat = load float, ptr %i.ias, align 4, !tbaa !13 ; 2 uses
  %i.iau = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.iat
  %i.iav = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.iau)
  %i.iaw = fsub reassoc nsz arcp contract afn float 5.000000e-01, %.sroa.0.0.i3678
  %i.iax = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.iaw)
  %i.iay = fcmp reassoc nsz arcp contract afn olt float %i.iav, %i.iax
  br i1 %i.iay, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %.lr.ph4052
  store float %.sroa.0.0.i3678, ptr %i.ias, align 4, !tbaa !13
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %.lr.ph4052
  %i.iaz = phi float [ %.sroa.0.0.i3678, %bb.gh ], [ %i.iat, %.lr.ph4052 ] ; 2 uses
  %i.iba = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv4295
  %i.ibb = load float, ptr %i.iba, align 4, !tbaa !13
  %i.ibc = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv4293
  %i.ibd = load float, ptr %i.ibc, align 4, !tbaa !13
  %i.ibe = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.iaz
  %i.ibf = fmul reassoc nsz arcp contract afn float %i.ibe, %i.ibd
  %i.ibg = fadd reassoc nsz arcp contract afn float %i.ibb, %i.ibf
  %i.ibh = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv4293
  %i.ibi = load float, ptr %i.ibh, align 4, !tbaa !13
  %i.ibj = fmul reassoc nsz arcp contract afn float %i.ibi, %i.iaz
  %i.ibk = fadd reassoc nsz arcp contract afn float %i.ibg, %i.ibj ; 3 uses
  %.not.i3679 = fcmp oeq float %i.ibk, 0.000000e+00
  %i.ibl = bitcast float %i.ibk to i32
  %i.ibm = add i32 %i.ibl, -8388608
  %i.ibn = bitcast i32 %i.ibm to float
  %.sroa.0.0.i3680 = select nsz i1 %.not.i3679, float %i.ibk, float %i.ibn
  %i.ibo = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv4293
  store float %.sroa.0.0.i3680, ptr %i.ibo, align 4, !tbaa !13
  %i.ibp = add nuw nsw i32 %.031664048, 2         ; 2 uses
  %indvars.iv.next4296 = add nuw nsw i64 %indvars.iv4295, 2
  %indvars.iv.next4294 = add nuw nsw i64 %indvars.iv4293, 1
  %i.ibq = icmp slt i32 %i.ibp, %i.hkx
  br i1 %i.ibq, label %.lr.ph4052, label %._crit_edge4053, !llvm.loop !359

.preheader3862:                                   ; preds = %._crit_edge4061, %.preheader3872, %.preheader3874, %.loopexit3876, %.preheader3865, %.preheader3864, %.preheader3863
  br i1 %i.dd, label %.lr.ph4070, label %.preheader3861

.lr.ph4070:                                       ; preds = %.preheader3862
  %i.ibr = add i32 %i.in, -12
  br label %bb.ik

bb.gj:                                            ; preds = %.lr.ph4063, %._crit_edge4061
  %indvars.iv4298 = phi i32 [ 1932, %.lr.ph4063 ], [ %indvars.iv.next4299, %._crit_edge4061 ] ; 6 uses
  %.031634062 = phi i32 [ 12, %.lr.ph4063 ], [ %i.ils, %._crit_edge4061 ] ; 3 uses
  %i.ibs = mul i32 %.031634062, 160
  %i.ibt = zext i32 %i.ibs to i64
  %i.ibu = shl nuw nsw i64 %i.ibt, 1              ; 7 uses
  %scevgep4648.a = getelementptr i8, ptr %scevgep4645, i64 %i.ibu ; 2 uses
  %scevgep4652.a = getelementptr i8, ptr %scevgep4651.a, i64 %i.ibu ; 2 uses
  %scevgep4660.a = getelementptr i8, ptr %scevgep4659.a, i64 %i.ibu ; 2 uses
  %scevgep4668.a = getelementptr i8, ptr %scevgep4667.a, i64 %i.ibu ; 2 uses
  %scevgep4676.a = getelementptr i8, ptr %scevgep4675.a, i64 %i.ibu ; 2 uses
  %scevgep4696.a = getelementptr i8, ptr %scevgep4695.a, i64 %i.ibu ; 2 uses
  %i.ibv = shl i32 %.031634062, 2
  %i.ibw = and i32 %i.ibv, 28
  %i.ibx = lshr i32 %4, %i.ibw
  %i.iby = and i32 %i.ibx, 1                      ; 6 uses
  %i.ibz = or disjoint i32 %i.iby, 12             ; 5 uses
  %i.ica = icmp slt i32 %i.ibz, %i.hzc
  br i1 %i.ica, label %.lr.ph4060.preheader, label %._crit_edge4061

.lr.ph4060.preheader:                             ; preds = %bb.gj
  %i.icb = or disjoint i32 %indvars.iv4298, %i.iby
  %i.icc = lshr exact i32 %indvars.iv4298, 1
  %i.icd = zext nneg i32 %i.icc to i64            ; 5 uses
  %i.ice = sext i32 %i.icb to i64                 ; 6 uses
  %i.icf = or disjoint i32 %i.hx, %i.iby
  %i.icg = sub i32 %i.hzd, %i.icf                 ; 2 uses
  %i.ich = lshr i32 %i.icg, 1
  %narrow7234 = add nuw i32 %i.ich, 1
  %i.ici = zext i32 %narrow7234 to i64            ; 2 uses
  %min.iters.check4842 = icmp ult i32 %i.icg, 30
  br i1 %min.iters.check4842, label %.lr.ph4060.preheader7238, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph4060.preheader
  %i.icj = or disjoint i32 %i.hz, %i.iby
  %i.ick = sub i32 %i.hze, %i.icj
  %i.icl = lshr i32 %i.ick, 1
  %i.icm = lshr exact i32 %indvars.iv4298, 1
  %i.icn = trunc nuw i32 %i.icm to i31
  %i.ico = trunc nuw i32 %i.icl to i31
  %i.icp = xor i31 %i.icn, -1
  %i.icq = icmp ult i31 %i.icp, %i.ico
  br i1 %i.icq, label %.lr.ph4060.preheader7238, label %vector.memcheck4625

vector.memcheck4625:                              ; preds = %vector.scevcheck
  %i.icr = or disjoint i32 %indvars.iv4298, %i.iby
  %i.ics = sext i32 %i.icr to i64
  %i.ict = shl nsw i64 %i.ics, 2                  ; 11 uses
  %scevgep4626 = getelementptr i8, ptr %i.i, i64 %i.ict ; 18 uses
  %i.icu = or disjoint i32 %i.hy, %i.iby
  %i.icv = sub i32 %i.hzf, %i.icu
  %i.icw = lshr i32 %i.icv, 1
  %i.icx = zext nneg i32 %i.icw to i64            ; 2 uses
  %i.icy = shl nuw nsw i64 %i.icx, 3
  %i.icz = add nsw i64 %i.icy, %i.ict             ; 10 uses
  %scevgep4628 = getelementptr i8, ptr %scevgep4627, i64 %i.icz ; 18 uses
  %i.ida = lshr exact i32 %indvars.iv4298, 1
  %i.idb = zext nneg i32 %i.ida to i64
  %i.idc = shl nuw nsw i64 %i.idb, 2              ; 4 uses
  %scevgep4630 = getelementptr i8, ptr %scevgep4629, i64 %i.idc ; 18 uses
  %i.idd = shl nuw nsw i64 %i.icx, 2              ; 2 uses
  %i.ide = add nuw nsw i64 %i.idd, %i.idc         ; 3 uses
  %scevgep4632 = getelementptr i8, ptr %scevgep4631, i64 %i.ide ; 18 uses
  %scevgep4634 = getelementptr i8, ptr %scevgep4633, i64 %i.idc ; 2 uses
  %scevgep4636 = getelementptr i8, ptr %scevgep4635, i64 %i.ide ; 2 uses
  %scevgep4638 = getelementptr i8, ptr %scevgep4637, i64 %i.idc ; 2 uses
  %scevgep4640 = getelementptr i8, ptr %scevgep4639, i64 %i.ide ; 2 uses
  %scevgep4642 = getelementptr i8, ptr %scevgep4641, i64 %i.ict ; 2 uses
  %scevgep4644 = getelementptr i8, ptr %scevgep4643, i64 %i.icz ; 2 uses
  %i.idf = add nuw nsw i64 %i.idd, %i.ibu         ; 6 uses
  %scevgep4650 = getelementptr i8, ptr %scevgep4649.a, i64 %i.idf ; 2 uses
  %scevgep4654.a = getelementptr i8, ptr %scevgep4653.a, i64 %i.idf ; 2 uses
  %scevgep4656.a = getelementptr i8, ptr %scevgep4655.a, i64 %i.ict ; 2 uses
  %scevgep4658 = getelementptr i8, ptr %scevgep4657.a, i64 %i.icz ; 2 uses
  %scevgep4662.a = getelementptr i8, ptr %scevgep4661.a, i64 %i.idf ; 2 uses
  %scevgep4664.a = getelementptr i8, ptr %scevgep4663.a, i64 %i.ict ; 2 uses
  %scevgep4666 = getelementptr i8, ptr %scevgep4665.a, i64 %i.icz ; 2 uses
  %scevgep4670.a = getelementptr i8, ptr %scevgep4669.a, i64 %i.idf ; 2 uses
  %scevgep4672.a = getelementptr i8, ptr %scevgep4671.a, i64 %i.ict ; 2 uses
  %scevgep4674 = getelementptr i8, ptr %scevgep4673.a, i64 %i.icz ; 2 uses
  %scevgep4678.a = getelementptr i8, ptr %scevgep4677.a, i64 %i.idf ; 2 uses
  %scevgep4680.a = getelementptr i8, ptr %scevgep4679.a, i64 %i.ict ; 2 uses
  %scevgep4682.a = getelementptr i8, ptr %scevgep4681.a, i64 %i.icz ; 2 uses
  %scevgep4684.a = getelementptr i8, ptr %scevgep4683.a, i64 %i.ict ; 2 uses
  %scevgep4686.a = getelementptr i8, ptr %scevgep4685.a, i64 %i.icz ; 2 uses
  %scevgep4688.a = getelementptr i8, ptr %scevgep4687.a, i64 %i.ict ; 2 uses
  %scevgep4690.a = getelementptr i8, ptr %scevgep4689.a, i64 %i.icz ; 2 uses
  %scevgep4692.a = getelementptr i8, ptr %scevgep4691.a, i64 %i.ict ; 2 uses
  %scevgep4694 = getelementptr i8, ptr %scevgep4693.a, i64 %i.icz ; 2 uses
  %scevgep4698.a = getelementptr i8, ptr %scevgep4697.a, i64 %i.idf ; 2 uses
  %scevgep4700.a = getelementptr i8, ptr %scevgep4699.a, i64 %i.ict ; 2 uses
  %scevgep4702 = getelementptr i8, ptr %scevgep4701, i64 %i.icz ; 2 uses
  %bound04703 = icmp ult ptr %scevgep4626, %scevgep4632
  %bound14704 = icmp ult ptr %scevgep4630, %scevgep4628
  %found.conflict4705 = and i1 %bound04703, %bound14704
  %bound04706 = icmp ult ptr %scevgep4626, %scevgep4636
  %bound14707 = icmp ult ptr %scevgep4634, %scevgep4628
  %found.conflict4708 = and i1 %bound04706, %bound14707
  %conflict.rdx = or i1 %found.conflict4705, %found.conflict4708
  %bound04709 = icmp ult ptr %scevgep4626, %scevgep4640
  %bound14710 = icmp ult ptr %scevgep4638, %scevgep4628
  %found.conflict4711 = and i1 %bound04709, %bound14710
  %conflict.rdx4712 = or i1 %conflict.rdx, %found.conflict4711
  %bound04713 = icmp ult ptr %scevgep4626, %scevgep4644
  %bound14714 = icmp ult ptr %scevgep4642, %scevgep4628
  %found.conflict4715 = and i1 %bound04713, %bound14714
  %conflict.rdx4716 = or i1 %conflict.rdx4712, %found.conflict4715
  %bound04717 = icmp ult ptr %scevgep4626, %scevgep4650
  %bound14718 = icmp ult ptr %scevgep4648.a, %scevgep4628
  %found.conflict4719 = and i1 %bound04717, %bound14718
  %conflict.rdx4720 = or i1 %conflict.rdx4716, %found.conflict4719
  %bound04721 = icmp ult ptr %scevgep4626, %scevgep4654.a
  %bound14722 = icmp ult ptr %scevgep4652.a, %scevgep4628
  %found.conflict4723 = and i1 %bound04721, %bound14722
  %conflict.rdx4724 = or i1 %conflict.rdx4720, %found.conflict4723
  %bound04725 = icmp ult ptr %scevgep4626, %scevgep4658
  %bound14726 = icmp ult ptr %scevgep4656.a, %scevgep4628
  %found.conflict4727 = and i1 %bound04725, %bound14726
  %conflict.rdx4728 = or i1 %conflict.rdx4724, %found.conflict4727
  %bound04729 = icmp ult ptr %scevgep4626, %scevgep4662.a
  %bound14730 = icmp ult ptr %scevgep4660.a, %scevgep4628
  %found.conflict4731 = and i1 %bound04729, %bound14730
  %conflict.rdx4732 = or i1 %conflict.rdx4728, %found.conflict4731
  %bound04733 = icmp ult ptr %scevgep4626, %scevgep4666
  %bound14734 = icmp ult ptr %scevgep4664.a, %scevgep4628
  %found.conflict4735 = and i1 %bound04733, %bound14734
  %conflict.rdx4736 = or i1 %conflict.rdx4732, %found.conflict4735
  %bound04737 = icmp ult ptr %scevgep4626, %scevgep4670.a
  %bound14738 = icmp ult ptr %scevgep4668.a, %scevgep4628
  %found.conflict4739 = and i1 %bound04737, %bound14738
  %conflict.rdx4740 = or i1 %conflict.rdx4736, %found.conflict4739
  %bound04741 = icmp ult ptr %scevgep4626, %scevgep4674
  %bound14742 = icmp ult ptr %scevgep4672.a, %scevgep4628
  %found.conflict4743 = and i1 %bound04741, %bound14742
  %conflict.rdx4744 = or i1 %conflict.rdx4740, %found.conflict4743
  %bound04745 = icmp ult ptr %scevgep4626, %scevgep4678.a
  %bound14746 = icmp ult ptr %scevgep4676.a, %scevgep4628
  %found.conflict4747 = and i1 %bound04745, %bound14746
  %conflict.rdx4748 = or i1 %conflict.rdx4744, %found.conflict4747
  %bound04749 = icmp ult ptr %scevgep4626, %scevgep4682.a
  %bound14750 = icmp ult ptr %scevgep4680.a, %scevgep4628
  %found.conflict4751 = and i1 %bound04749, %bound14750
  %conflict.rdx4752 = or i1 %conflict.rdx4748, %found.conflict4751
  %bound04753 = icmp ult ptr %scevgep4626, %scevgep4686.a
  %bound14754 = icmp ult ptr %scevgep4684.a, %scevgep4628
  %found.conflict4755 = and i1 %bound04753, %bound14754
  %conflict.rdx4756 = or i1 %conflict.rdx4752, %found.conflict4755
  %bound04757 = icmp ult ptr %scevgep4626, %scevgep4690.a
  %bound14758 = icmp ult ptr %scevgep4688.a, %scevgep4628
  %found.conflict4759 = and i1 %bound04757, %bound14758
  %conflict.rdx4760 = or i1 %conflict.rdx4756, %found.conflict4759
  %bound04761 = icmp ult ptr %scevgep4626, %scevgep4694
  %bound14762 = icmp ult ptr %scevgep4692.a, %scevgep4628
  %found.conflict4763 = and i1 %bound04761, %bound14762
  %conflict.rdx4764 = or i1 %conflict.rdx4760, %found.conflict4763
  %bound04765 = icmp ult ptr %scevgep4626, %scevgep4698.a
  %bound14766 = icmp ult ptr %scevgep4696.a, %scevgep4628
  %found.conflict4767 = and i1 %bound04765, %bound14766
  %conflict.rdx4768 = or i1 %conflict.rdx4764, %found.conflict4767
  %bound04769 = icmp ult ptr %scevgep4626, %scevgep4702
  %bound14770 = icmp ult ptr %scevgep4700.a, %scevgep4628
  %found.conflict4771 = and i1 %bound04769, %bound14770
  %conflict.rdx4772 = or i1 %conflict.rdx4768, %found.conflict4771
  %bound04773 = icmp ult ptr %scevgep4630, %scevgep4636
  %bound14774 = icmp ult ptr %scevgep4634, %scevgep4632
  %found.conflict4775 = and i1 %bound04773, %bound14774
  %conflict.rdx4776 = or i1 %conflict.rdx4772, %found.conflict4775
  %bound04777 = icmp ult ptr %scevgep4630, %scevgep4640
  %bound14778 = icmp ult ptr %scevgep4638, %scevgep4632
  %found.conflict4779 = and i1 %bound04777, %bound14778
  %conflict.rdx4780 = or i1 %conflict.rdx4776, %found.conflict4779
  %bound04781 = icmp ult ptr %scevgep4630, %scevgep4644
  %bound14782 = icmp ult ptr %scevgep4642, %scevgep4632
  %found.conflict4783 = and i1 %bound04781, %bound14782
  %conflict.rdx4784 = or i1 %conflict.rdx4780, %found.conflict4783
  %bound04785 = icmp ult ptr %scevgep4630, %scevgep4650
  %bound14786 = icmp ult ptr %scevgep4648.a, %scevgep4632
  %found.conflict4787 = and i1 %bound04785, %bound14786
  %conflict.rdx4788 = or i1 %conflict.rdx4784, %found.conflict4787
  %bound04789 = icmp ult ptr %scevgep4630, %scevgep4654.a
  %bound14790 = icmp ult ptr %scevgep4652.a, %scevgep4632
  %found.conflict4791 = and i1 %bound04789, %bound14790
  %conflict.rdx4792 = or i1 %conflict.rdx4788, %found.conflict4791
  %bound04793 = icmp ult ptr %scevgep4630, %scevgep4658
  %bound14794 = icmp ult ptr %scevgep4656.a, %scevgep4632
  %found.conflict4795 = and i1 %bound04793, %bound14794
  %conflict.rdx4796 = or i1 %conflict.rdx4792, %found.conflict4795
  %bound04797 = icmp ult ptr %scevgep4630, %scevgep4662.a
  %bound14798 = icmp ult ptr %scevgep4660.a, %scevgep4632
  %found.conflict4799 = and i1 %bound04797, %bound14798
  %conflict.rdx4800 = or i1 %conflict.rdx4796, %found.conflict4799
  %bound04801 = icmp ult ptr %scevgep4630, %scevgep4666
  %bound14802 = icmp ult ptr %scevgep4664.a, %scevgep4632
  %found.conflict4803 = and i1 %bound04801, %bound14802
  %conflict.rdx4804 = or i1 %conflict.rdx4800, %found.conflict4803
  %bound04805 = icmp ult ptr %scevgep4630, %scevgep4670.a
  %bound14806 = icmp ult ptr %scevgep4668.a, %scevgep4632
  %found.conflict4807 = and i1 %bound04805, %bound14806
  %conflict.rdx4808 = or i1 %conflict.rdx4804, %found.conflict4807
  %bound04809 = icmp ult ptr %scevgep4630, %scevgep4674
  %bound14810 = icmp ult ptr %scevgep4672.a, %scevgep4632
  %found.conflict4811 = and i1 %bound04809, %bound14810
  %conflict.rdx4812 = or i1 %conflict.rdx4808, %found.conflict4811
  %bound04813 = icmp ult ptr %scevgep4630, %scevgep4678.a
  %bound14814 = icmp ult ptr %scevgep4676.a, %scevgep4632
end_hunk_0
begin_hunk_1_@amaze_demosaic:bb.a
  %i.igg = bitcast <8 x float> %i.ige to <8 x i32>
  %i.igh = add <8 x i32> %i.igg, splat (i32 -8388608)
  %i.igi = bitcast <8 x i32> %i.igh to <8 x float>
  %i.igj = select nsz <8 x i1> %i.igf, <8 x float> %i.ige, <8 x float> %i.igi
  %i.igk = fadd reassoc nsz arcp contract afn <8 x float> %i.igj, %wide.masked.gather4861
  %i.igl = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.load4855, %i.iew
  %predphi4868 = select nsz <8 x i1> %i.igd, <8 x float> %i.igl, <8 x float> %i.igk
  %i.igm = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.ife
  %i.ign = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.igm)
  %i.igo = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ign, splat (float 7.500000e-01)
  %i.igp = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.load4855, %wide.masked.load4865 ; 3 uses
  %i.igq = fcmp oeq <8 x float> %i.igp, zeroinitializer
  %i.igr = bitcast <8 x float> %i.igp to <8 x i32>
  %i.igs = add <8 x i32> %i.igr, splat (i32 -8388608)
  %i.igt = bitcast <8 x i32> %i.igs to <8 x float>
  %i.igu = select nsz <8 x i1> %i.igq, <8 x float> %i.igp, <8 x float> %i.igt
  %i.igv = fadd reassoc nsz arcp contract afn <8 x float> %i.igu, %wide.masked.gather4864
  %i.igw = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.load4855, %i.ife
  %predphi4869 = select nsz <8 x i1> %i.igo, <8 x float> %i.igw, <8 x float> %i.igv
  %wide.gep4870.a = getelementptr inbounds [4 x i8], ptr %i.k, <8 x i64> %i.idx
  %wide.masked.gather4871.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep4870.a, <8 x i1> %i.idw, <8 x float> poison), !tbaa !13, !alias.scope !383 ; 2 uses
  %i.igx = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather4871.a, %predphi4867.a
  %wide.gep4872.a = getelementptr inbounds nuw [4 x i8], ptr %i.k, <8 x i64> %i.ieh
  %wide.masked.gather4873.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep4872.a, <8 x i1> %i.idw, <8 x float> poison), !tbaa !13, !alias.scope !385 ; 2 uses
  %i.igy = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather4873.a, %predphi4866.a
  %i.igz = fadd reassoc nsz arcp contract afn <8 x float> %i.igy, %i.igx
  %i.iha = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather4873.a, %wide.masked.gather4871.a
  %i.ihb = fdiv reassoc nsz arcp contract afn <8 x float> %i.igz, %i.iha ; 10 uses
  %wide.gep4874.a = getelementptr inbounds [4 x i8], ptr %i.m, <8 x i64> %i.iep
  %wide.masked.gather4875.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep4874.a, <8 x i1> %i.idw, <8 x float> poison), !tbaa !13, !alias.scope !387 ; 2 uses
  %i.ihc = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather4875.a, %predphi4869
  %wide.gep4876 = getelementptr inbounds nuw [4 x i8], ptr %i.m, <8 x i64> %i.iex
  %wide.masked.gather4877 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep4876, <8 x i1> %i.idw, <8 x float> poison), !tbaa !13, !alias.scope !389 ; 2 uses
  %i.ihd = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather4877, %predphi4868
  %i.ihe = fadd reassoc nsz arcp contract afn <8 x float> %i.ihd, %i.ihc
  %i.ihf = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather4877, %wide.masked.gather4875.a
  %i.ihg = fdiv reassoc nsz arcp contract afn <8 x float> %i.ihe, %i.ihf ; 10 uses
  %i.ihh = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ihb, %wide.masked.load4855 ; 2 uses
  %i.ihi = select <8 x i1> %i.idw, <8 x i1> %i.ihh, <8 x i1> zeroinitializer ; 2 uses
  %i.ihj = fmul reassoc nsz arcp contract afn <8 x float> %i.ihb, splat (float 2.000000e+00)
  %i.ihk = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ihj, %wide.masked.load4855 ; 2 uses
  %i.ihl = xor <8 x i1> %i.ihk, splat (i1 true)
  %i.ihm = select <8 x i1> %i.ihi, <8 x i1> %i.ihl, <8 x i1> zeroinitializer ; 3 uses
  %i.ihn = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.load4855, %i.ihb
  %i.iho = fpext reassoc nsz arcp contract afn <8 x float> %i.ihn to <8 x double>
  %i.ihp = fmul reassoc nsz arcp contract afn <8 x double> %i.iho, splat (double 2.000000e+00)
  %i.ihq = fadd reassoc nsz arcp contract afn <8 x float> %i.ieb, %i.ihb
  %i.ihr = fpext reassoc nsz arcp contract afn <8 x float> %i.ihq to <8 x double>
  %i.ihs = fdiv reassoc nsz arcp contract afn <8 x double> %i.ihp, %i.ihr
  %i.iht = fptrunc reassoc nsz arcp contract afn <8 x double> %i.ihs to <8 x float>
  %i.ihu = fcmp reassoc nsz arcp contract afn olt <8 x float> %wide.masked.gather, %wide.masked.gather4858 ; 4 uses
  %i.ihv = xor <8 x i1> %i.ihu, splat (i1 true)   ; 3 uses
  %i.ihw = select <8 x i1> %i.ihm, <8 x i1> %i.ihv, <8 x i1> zeroinitializer
  %i.ihx = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ihb, %wide.masked.gather
  %i.ihy = select reassoc nsz arcp contract afn <8 x i1> %i.ihx, <8 x float> %i.ihb, <8 x float> %wide.masked.gather ; 3 uses
  %i.ihz = fcmp reassoc nsz arcp contract afn ule <8 x float> %wide.masked.gather4858, %i.ihy ; 2 uses
  %i.iia = select <8 x i1> %i.ihw, <8 x i1> %i.ihz, <8 x i1> zeroinitializer
  %i.iib = select <8 x i1> %i.ihm, <8 x i1> %i.ihu, <8 x i1> zeroinitializer ; 2 uses
  %i.iic = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ihb, %wide.masked.gather4858
  %i.iid = select reassoc nsz arcp contract afn <8 x i1> %i.iic, <8 x float> %i.ihb, <8 x float> %wide.masked.gather4858 ; 3 uses
  %i.iie = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.gather, %i.iid ; 3 uses
  %i.iif = xor <8 x i1> %i.iie, splat (i1 true)   ; 2 uses
  %i.iig = select <8 x i1> %i.iib, <8 x i1> %i.iif, <8 x i1> zeroinitializer
  %i.iih = select <8 x i1> %i.iib, <8 x i1> %i.iie, <8 x i1> zeroinitializer
  %predphi4878.a = select reassoc nsz arcp contract afn <8 x i1> %i.iih, <8 x float> %wide.masked.gather, <8 x float> %wide.masked.gather4858
  %predphi4879.a = select reassoc nsz arcp contract afn <8 x i1> %i.iia, <8 x float> %i.ihy, <8 x float> %predphi4878.a
  %predphi4880.a = select reassoc nsz arcp contract afn <8 x i1> %i.iig, <8 x float> %i.iid, <8 x float> %predphi4879.a ; 2 uses
  %i.iii = fsub reassoc nsz arcp contract afn <8 x float> %i.ihb, %predphi4880.a
  %i.iij = fmul reassoc nsz arcp contract afn <8 x float> %i.iii, %i.iht
  %i.iik = fadd reassoc nsz arcp contract afn <8 x float> %i.iij, %predphi4880.a
  %i.iil = select <8 x i1> %i.ihi, <8 x i1> %i.ihk, <8 x i1> zeroinitializer ; 2 uses
  %i.iim = select <8 x i1> %i.iil, <8 x i1> %i.ihv, <8 x i1> zeroinitializer
  %i.iin = select <8 x i1> %i.iim, <8 x i1> %i.ihz, <8 x i1> zeroinitializer
  %i.iio = select <8 x i1> %i.iil, <8 x i1> %i.ihu, <8 x i1> zeroinitializer ; 2 uses
  %i.iip = select <8 x i1> %i.iio, <8 x i1> %i.iif, <8 x i1> zeroinitializer
  %i.iiq = xor <8 x i1> %i.ihh, splat (i1 true)
  %i.iir = select <8 x i1> %i.idw, <8 x i1> %i.iiq, <8 x i1> zeroinitializer
  %i.iis = select <8 x i1> %i.iio, <8 x i1> %i.iie, <8 x i1> zeroinitializer
  %predphi4881.a = select nsz <8 x i1> %i.iis, <8 x float> %wide.masked.gather, <8 x float> %wide.masked.gather4858
  %predphi4882.a = select nsz <8 x i1> %i.iip, <8 x float> %i.iid, <8 x float> %predphi4881.a
  %predphi4883.a = select nsz <8 x i1> %i.iin, <8 x float> %i.ihy, <8 x float> %predphi4882.a
  %predphi4884.a = select nsz <8 x i1> %i.ihm, <8 x float> %i.iik, <8 x float> %predphi4883.a
  %predphi4885.a = select nsz <8 x i1> %i.iir, <8 x float> %i.ihb, <8 x float> %predphi4884.a ; 6 uses
  %i.iit = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ihg, %wide.masked.load4855 ; 2 uses
  %i.iiu = select <8 x i1> %i.idw, <8 x i1> %i.iit, <8 x i1> zeroinitializer ; 2 uses
  %i.iiv = fmul reassoc nsz arcp contract afn <8 x float> %i.ihg, splat (float 2.000000e+00)
  %i.iiw = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.iiv, %wide.masked.load4855 ; 2 uses
  %i.iix = xor <8 x i1> %i.iiw, splat (i1 true)
  %i.iiy = select <8 x i1> %i.iiu, <8 x i1> %i.iix, <8 x i1> zeroinitializer ; 3 uses
  %i.iiz = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.load4855, %i.ihg
  %i.ija = fpext reassoc nsz arcp contract afn <8 x float> %i.iiz to <8 x double>
  %i.ijb = fmul reassoc nsz arcp contract afn <8 x double> %i.ija, splat (double 2.000000e+00)
  %i.ijc = fadd reassoc nsz arcp contract afn <8 x float> %i.ieb, %i.ihg
  %i.ijd = fpext reassoc nsz arcp contract afn <8 x float> %i.ijc to <8 x double>
  %i.ije = fdiv reassoc nsz arcp contract afn <8 x double> %i.ijb, %i.ijd
  %i.ijf = fptrunc reassoc nsz arcp contract afn <8 x double> %i.ije to <8 x float>
  %i.ijg = fcmp reassoc nsz arcp contract afn olt <8 x float> %wide.masked.gather4861, %wide.masked.gather4864 ; 4 uses
  %i.ijh = xor <8 x i1> %i.ijg, splat (i1 true)   ; 3 uses
  %i.iji = select <8 x i1> %i.iiy, <8 x i1> %i.ijh, <8 x i1> zeroinitializer
  %i.ijj = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ihg, %wide.masked.gather4861
  %i.ijk = select reassoc nsz arcp contract afn <8 x i1> %i.ijj, <8 x float> %i.ihg, <8 x float> %wide.masked.gather4861 ; 3 uses
  %i.ijl = fcmp reassoc nsz arcp contract afn ule <8 x float> %wide.masked.gather4864, %i.ijk ; 2 uses
  %i.ijm = select <8 x i1> %i.iji, <8 x i1> %i.ijl, <8 x i1> zeroinitializer
  %i.ijn = select <8 x i1> %i.iiy, <8 x i1> %i.ijg, <8 x i1> zeroinitializer ; 2 uses
  %i.ijo = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ihg, %wide.masked.gather4864
  %i.ijp = select reassoc nsz arcp contract afn <8 x i1> %i.ijo, <8 x float> %i.ihg, <8 x float> %wide.masked.gather4864 ; 3 uses
  %i.ijq = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.gather4861, %i.ijp ; 3 uses
  %i.ijr = xor <8 x i1> %i.ijq, splat (i1 true)   ; 2 uses
  %i.ijs = select <8 x i1> %i.ijn, <8 x i1> %i.ijr, <8 x i1> zeroinitializer
  %i.ijt = select <8 x i1> %i.ijn, <8 x i1> %i.ijq, <8 x i1> zeroinitializer
  %predphi4886.a = select reassoc nsz arcp contract afn <8 x i1> %i.ijt, <8 x float> %wide.masked.gather4861, <8 x float> %wide.masked.gather4864
  %predphi4887.a = select reassoc nsz arcp contract afn <8 x i1> %i.ijm, <8 x float> %i.ijk, <8 x float> %predphi4886.a
  %predphi4888.a = select reassoc nsz arcp contract afn <8 x i1> %i.ijs, <8 x float> %i.ijp, <8 x float> %predphi4887.a ; 2 uses
  %i.iju = fsub reassoc nsz arcp contract afn <8 x float> %i.ihg, %predphi4888.a
  %i.ijv = fmul reassoc nsz arcp contract afn <8 x float> %i.iju, %i.ijf
  %i.ijw = fadd reassoc nsz arcp contract afn <8 x float> %i.ijv, %predphi4888.a
  %i.ijx = select <8 x i1> %i.iiu, <8 x i1> %i.iiw, <8 x i1> zeroinitializer ; 2 uses
  %i.ijy = select <8 x i1> %i.ijx, <8 x i1> %i.ijh, <8 x i1> zeroinitializer
  %i.ijz = select <8 x i1> %i.ijy, <8 x i1> %i.ijl, <8 x i1> zeroinitializer
  %i.ika = select <8 x i1> %i.ijx, <8 x i1> %i.ijg, <8 x i1> zeroinitializer ; 2 uses
  %i.ikb = select <8 x i1> %i.ika, <8 x i1> %i.ijr, <8 x i1> zeroinitializer
  %i.ikc = xor <8 x i1> %i.iit, splat (i1 true)
  %i.ikd = select <8 x i1> %i.idw, <8 x i1> %i.ikc, <8 x i1> zeroinitializer
  %i.ike = select <8 x i1> %i.ika, <8 x i1> %i.ijq, <8 x i1> zeroinitializer
  %predphi4889.a = select nsz <8 x i1> %i.ike, <8 x float> %wide.masked.gather4861, <8 x float> %wide.masked.gather4864
  %predphi4890.a = select nsz <8 x i1> %i.ikb, <8 x float> %i.ijp, <8 x float> %predphi4889.a
  %predphi4891.a = select nsz <8 x i1> %i.ijz, <8 x float> %i.ijk, <8 x float> %predphi4890.a
  %predphi4892.a = select nsz <8 x i1> %i.iiy, <8 x float> %i.ijw, <8 x float> %predphi4891.a
  %predphi4893.a = select nsz <8 x i1> %i.ikd, <8 x float> %i.ihg, <8 x float> %predphi4892.a ; 6 uses
  %i.ikf = fcmp reassoc nsz arcp contract afn ogt <8 x float> %predphi4893.a, %broadcast.splat4846.a ; 2 uses
  %i.ikg = select <8 x i1> %i.idw, <8 x i1> %i.ikf, <8 x i1> zeroinitializer ; 2 uses
  %i.ikh = select <8 x i1> %i.ikg, <8 x i1> %i.ijh, <8 x i1> zeroinitializer
  %i.iki = fcmp reassoc nsz arcp contract afn olt <8 x float> %predphi4893.a, %wide.masked.gather4861
  %i.ikj = select reassoc nsz arcp contract afn <8 x i1> %i.iki, <8 x float> %predphi4893.a, <8 x float> %wide.masked.gather4861 ; 2 uses
  %i.ikk = fcmp reassoc nsz arcp contract afn ule <8 x float> %wide.masked.gather4864, %i.ikj
  %i.ikl = select <8 x i1> %i.ikh, <8 x i1> %i.ikk, <8 x i1> zeroinitializer
  %i.ikm = select <8 x i1> %i.ikg, <8 x i1> %i.ijg, <8 x i1> zeroinitializer ; 2 uses
  %i.ikn = fcmp reassoc nsz arcp contract afn olt <8 x float> %predphi4893.a, %wide.masked.gather4864
  %i.iko = select reassoc nsz arcp contract afn <8 x i1> %i.ikn, <8 x float> %predphi4893.a, <8 x float> %wide.masked.gather4864 ; 2 uses
  %i.ikp = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.gather4861, %i.iko ; 2 uses
  %i.ikq = xor <8 x i1> %i.ikp, splat (i1 true)
  %i.ikr = select <8 x i1> %i.ikm, <8 x i1> %i.ikq, <8 x i1> zeroinitializer
  %i.iks = xor <8 x i1> %i.ikf, splat (i1 true)
  %i.ikt = select <8 x i1> %i.idw, <8 x i1> %i.iks, <8 x i1> zeroinitializer
  %i.iku = select <8 x i1> %i.ikm, <8 x i1> %i.ikp, <8 x i1> zeroinitializer
  %predphi4894.a = select nsz <8 x i1> %i.iku, <8 x float> %wide.masked.gather4861, <8 x float> %wide.masked.gather4864
  %predphi4895.a = select nsz <8 x i1> %i.ikr, <8 x float> %i.iko, <8 x float> %predphi4894.a
  %predphi4896.a = select nsz <8 x i1> %i.ikl, <8 x float> %i.ikj, <8 x float> %predphi4895.a
  %predphi4897.a = select nsz <8 x i1> %i.ikt, <8 x float> %predphi4893.a, <8 x float> %predphi4896.a ; 2 uses
  %i.ikv = fcmp reassoc nsz arcp contract afn ogt <8 x float> %predphi4885.a, %broadcast.splat4846.a ; 2 uses
  %i.ikw = select <8 x i1> %i.idw, <8 x i1> %i.ikv, <8 x i1> zeroinitializer ; 2 uses
  %i.ikx = select <8 x i1> %i.ikw, <8 x i1> %i.ihv, <8 x i1> zeroinitializer
  %i.iky = fcmp reassoc nsz arcp contract afn olt <8 x float> %predphi4885.a, %wide.masked.gather
  %i.ikz = select reassoc nsz arcp contract afn <8 x i1> %i.iky, <8 x float> %predphi4885.a, <8 x float> %wide.masked.gather ; 2 uses
  %i.ila = fcmp reassoc nsz arcp contract afn ule <8 x float> %wide.masked.gather4858, %i.ikz
  %i.ilb = select <8 x i1> %i.ikx, <8 x i1> %i.ila, <8 x i1> zeroinitializer
  %i.ilc = select <8 x i1> %i.ikw, <8 x i1> %i.ihu, <8 x i1> zeroinitializer ; 2 uses
  %i.ild = fcmp reassoc nsz arcp contract afn olt <8 x float> %predphi4885.a, %wide.masked.gather4858
  %i.ile = select reassoc nsz arcp contract afn <8 x i1> %i.ild, <8 x float> %predphi4885.a, <8 x float> %wide.masked.gather4858 ; 2 uses
  %i.ilf = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.gather, %i.ile ; 2 uses
  %i.ilg = xor <8 x i1> %i.ilf, splat (i1 true)
  %i.ilh = select <8 x i1> %i.ilc, <8 x i1> %i.ilg, <8 x i1> zeroinitializer
  %i.ili = xor <8 x i1> %i.ikv, splat (i1 true)
  %i.ilj = select <8 x i1> %i.idw, <8 x i1> %i.ili, <8 x i1> zeroinitializer
  %i.ilk = select <8 x i1> %i.ilc, <8 x i1> %i.ilf, <8 x i1> zeroinitializer
  %predphi4898.a = select nsz <8 x i1> %i.ilk, <8 x float> %wide.masked.gather, <8 x float> %wide.masked.gather4858
  %predphi4899.a = select nsz <8 x i1> %i.ilh, <8 x float> %i.ile, <8 x float> %predphi4898.a
  %predphi4900 = select nsz <8 x i1> %i.ilb, <8 x float> %i.ikz, <8 x float> %predphi4899.a
  %predphi4901 = select nsz <8 x i1> %i.ilj, <8 x float> %predphi4885.a, <8 x float> %predphi4900
  %i.ill = getelementptr [4 x i8], ptr %i.s, i64 %i.idn
  %wide.masked.load4902 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 8 %i.ill, <8 x i1> %i.idw, <8 x float> poison), !tbaa !13, !alias.scope !391
  %i.ilm = fsub reassoc nsz arcp contract afn <8 x float> %predphi4901, %predphi4897.a
  %i.iln = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.load4902, %i.ilm
  %i.ilo = fadd reassoc nsz arcp contract afn <8 x float> %i.iln, %predphi4897.a ; 2 uses
  %wide.gep4903 = getelementptr inbounds nuw [4 x i8], ptr %i.i, <8 x i64> %vec.ind4851
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ilo, <8 x ptr> align 4 %wide.gep4903, <8 x i1> %i.idw), !tbaa !13, !alias.scope !393, !noalias !395
  %wide.gep4904 = getelementptr inbounds nuw [4 x i8], ptr %i.y, <8 x i64> %vec.ind4851
  %wide.masked.gather4905 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep4904, <8 x i1> %i.idw, <8 x float> poison), !tbaa !13, !alias.scope !398
  %i.ilp = fsub reassoc nsz arcp contract afn <8 x float> %i.ilo, %wide.masked.gather4905
  %i.ilq = getelementptr [4 x i8], ptr %i.p, i64 %i.idp
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.ilp, ptr align 8 %i.ilq, <8 x i1> %i.idw), !tbaa !13, !alias.scope !399, !noalias !400
  %index.next4906 = add nuw i64 %index4850, 8     ; 2 uses
  %vec.ind.next4907 = add nuw nsw <8 x i64> %vec.ind4851, splat (i64 16)
  %i.ilr = icmp eq i64 %index.next4906, %n.vec4844
  br i1 %i.ilr, label %middle.block4908, label %vector.body4849, !llvm.loop !401

middle.block4908:                                 ; preds = %vector.body4849
  %cmp.n4909 = icmp eq i64 %n.vec4844, %i.ici
  br i1 %cmp.n4909, label %._crit_edge4061, label %.lr.ph4060.preheader7238

.lr.ph4060.preheader7238:                         ; preds = %vector.memcheck4625, %vector.scevcheck, %.lr.ph4060.preheader, %middle.block4908
  %indvars.iv4302.ph = phi i64 [ %i.ice, %vector.memcheck4625 ], [ %i.ice, %vector.scevcheck ], [ %i.ice, %.lr.ph4060.preheader ], [ %i.idh, %middle.block4908 ]
  %indvars.iv4300.ph = phi i64 [ %i.icd, %vector.memcheck4625 ], [ %i.icd, %vector.scevcheck ], [ %i.icd, %.lr.ph4060.preheader ], [ %i.idi, %middle.block4908 ]
  %.031624056.ph = phi i32 [ %i.ibz, %vector.memcheck4625 ], [ %i.ibz, %vector.scevcheck ], [ %i.ibz, %.lr.ph4060.preheader ], [ %i.idl, %middle.block4908 ]
  br label %.lr.ph4060

._crit_edge4061:                                  ; preds = %bb.ij, %middle.block4908, %bb.gj
  %i.ils = add nuw nsw i32 %.031634062, 1         ; 2 uses
  %i.ilt = icmp slt i32 %i.ils, %i.db
  %indvars.iv.next4299 = add i32 %indvars.iv4298, 160
  br i1 %i.ilt, label %bb.gj, label %.preheader3862, !llvm.loop !402

.lr.ph4060:                                       ; preds = %.lr.ph4060.preheader7238, %bb.ij
  %indvars.iv4302 = phi i64 [ %indvars.iv.next4303, %bb.ij ], [ %indvars.iv4302.ph, %.lr.ph4060.preheader7238 ] ; 9 uses
  %indvars.iv4300 = phi i64 [ %indvars.iv.next4301, %bb.ij ], [ %indvars.iv4300.ph, %.lr.ph4060.preheader7238 ] ; 3 uses
  %.031624056 = phi i32 [ %i.isw, %bb.ij ], [ %.031624056.ph, %.lr.ph4060.preheader7238 ]
  %i.ilu = lshr i64 %indvars.iv4302, 1
  %i.ilv = and i64 %i.ilu, 2147483647             ; 3 uses
  %i.ilw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ilv
  %i.ilx = load float, ptr %i.ilw, align 4, !tbaa !13
  %i.ily = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.ilx
  %i.ilz = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ily)
  %i.ima = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ilv
  %i.imb = load float, ptr %i.ima, align 4, !tbaa !13
  %i.imc = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.imb
  %i.imd = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.imc)
  %i.ime = fcmp reassoc nsz arcp contract afn olt float %i.ilz, %i.imd
  br i1 %i.ime, label %bb.ij, label %bb.gk

bb.gk:                                            ; preds = %.lr.ph4060
  %i.imf = insertelement <4 x i64> poison, i64 %indvars.iv4302, i64 0
  %i.img = shufflevector <4 x i64> %i.imf, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.imh = add nsw <4 x i64> %i.img, <i64 -160, i64 160, i64 -1, i64 1>
  %i.imi = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv4300 ; 2 uses
  %i.imj = load float, ptr %i.imi, align 4, !tbaa !13 ; 15 uses
  %i.imk = fadd reassoc nsz arcp contract afn float %i.imj, f0x3727C5AC ; 3 uses
  %i.iml = getelementptr inbounds [4 x i8], ptr %i.y, <4 x i64> %i.imh
  %i.imm = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.iml, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !13 ; 17 uses
  %i.imn = fpext <4 x float> %i.imm to <4 x double>
  %i.imo = fmul reassoc nsz arcp contract afn <4 x double> %i.imn, splat (double 2.000000e+00)
  %i.imp = getelementptr i8, ptr %i.imi, <4 x i64> <i64 -640, i64 640, i64 -4, i64 4>
  %i.imq = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.imp, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !13 ; 5 uses
  %i.imr = insertelement <4 x float> poison, float %i.imk, i64 0
  %i.ims = shufflevector <4 x float> %i.imr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.imt = fadd reassoc nsz arcp contract afn <4 x float> %i.ims, %i.imq
  %i.imu = fpext <4 x float> %i.imt to <4 x double>
  %i.imv = fdiv reassoc nsz arcp contract afn <4 x double> %i.imo, %i.imu ; 4 uses
  %i.imw = extractelement <4 x double> %i.imv, i64 0
  %i.imx = fptrunc reassoc nsz arcp contract afn double %i.imw to float ; 2 uses
  %i.imy = extractelement <4 x double> %i.imv, i64 1
  %i.imz = fptrunc reassoc nsz arcp contract afn double %i.imy to float ; 2 uses
  %i.ina = extractelement <4 x double> %i.imv, i64 2
  %i.inb = fptrunc reassoc nsz arcp contract afn double %i.ina to float ; 2 uses
  %i.inc = extractelement <4 x double> %i.imv, i64 3
  %i.ind = fptrunc reassoc nsz arcp contract afn double %i.inc to float ; 2 uses
  %i.ine = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.imx
  %i.inf = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ine)
  %i.ing = fcmp reassoc nsz arcp contract afn olt float %i.inf, 7.500000e-01
  br i1 %i.ing, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.inh = fmul reassoc nsz arcp contract afn float %i.imj, %i.imx
  br label %bb.gn

bb.gm:                                            ; preds = %bb.gk
  %i.ini = extractelement <4 x float> %i.imq, i64 0
  %i.inj = fsub reassoc nsz arcp contract afn float %i.imj, %i.ini ; 3 uses
  %.not.i3682 = fcmp oeq float %i.inj, 0.000000e+00
  %i.ink = bitcast float %i.inj to i32
  %i.inl = add i32 %i.ink, -8388608
  %i.inm = bitcast i32 %i.inl to float
  %.sroa.0.0.i3683 = select nsz i1 %.not.i3682, float %i.inj, float %i.inm
  %i.inn = extractelement <4 x float> %i.imm, i64 0
  %i.ino = fadd reassoc nsz arcp contract afn float %.sroa.0.0.i3683, %i.inn
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  %.03159 = phi nsz float [ %i.inh, %bb.gl ], [ %i.ino, %bb.gm ]
  %i.inp = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.imz
  %i.inq = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.inp)
  %i.inr = fcmp reassoc nsz arcp contract afn olt float %i.inq, 7.500000e-01
  br i1 %i.inr, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %i.ins = fmul reassoc nsz arcp contract afn float %i.imj, %i.imz
  br label %bb.gq

bb.gp:                                            ; preds = %bb.gn
  %i.int = extractelement <4 x float> %i.imq, i64 1
  %i.inu = fsub reassoc nsz arcp contract afn float %i.imj, %i.int ; 3 uses
  %.not.i3684 = fcmp oeq float %i.inu, 0.000000e+00
  %i.inv = bitcast float %i.inu to i32
  %i.inw = add i32 %i.inv, -8388608
  %i.inx = bitcast i32 %i.inw to float
  %.sroa.0.0.i3685 = select nsz i1 %.not.i3684, float %i.inu, float %i.inx
  %i.iny = extractelement <4 x float> %i.imm, i64 1
  %i.inz = fadd reassoc nsz arcp contract afn float %.sroa.0.0.i3685, %i.iny
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %.03158 = phi nsz float [ %i.ins, %bb.go ], [ %i.inz, %bb.gp ]
  %i.ioa = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.inb
  %i.iob = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ioa)
  %i.ioc = fcmp reassoc nsz arcp contract afn olt float %i.iob, 7.500000e-01
  br i1 %i.ioc, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.iod = fmul reassoc nsz arcp contract afn float %i.imj, %i.inb
  br label %bb.gt

bb.gs:                                            ; preds = %bb.gq
  %i.ioe = extractelement <4 x float> %i.imq, i64 2
  %i.iof = fsub reassoc nsz arcp contract afn float %i.imj, %i.ioe ; 3 uses
  %.not.i3686 = fcmp oeq float %i.iof, 0.000000e+00
  %i.iog = bitcast float %i.iof to i32
  %i.ioh = add i32 %i.iog, -8388608
  %i.ioi = bitcast i32 %i.ioh to float
  %.sroa.0.0.i3687 = select nsz i1 %.not.i3686, float %i.iof, float %i.ioi
  %i.ioj = extractelement <4 x float> %i.imm, i64 2
  %i.iok = fadd reassoc nsz arcp contract afn float %.sroa.0.0.i3687, %i.ioj
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %.03157 = phi nsz float [ %i.iod, %bb.gr ], [ %i.iok, %bb.gs ]
  %i.iol = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ind
  %i.iom = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.iol)
  %i.ion = fcmp reassoc nsz arcp contract afn olt float %i.iom, 7.500000e-01
  br i1 %i.ion, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  %i.ioo = fmul reassoc nsz arcp contract afn float %i.imj, %i.ind
  br label %bb.gw

bb.gv:                                            ; preds = %bb.gt
  %i.iop = extractelement <4 x float> %i.imq, i64 3
  %i.ioq = fsub reassoc nsz arcp contract afn float %i.imj, %i.iop ; 3 uses
  %.not.i3688 = fcmp oeq float %i.ioq, 0.000000e+00
  %i.ior = bitcast float %i.ioq to i32
  %i.ios = add i32 %i.ior, -8388608
  %i.iot = bitcast i32 %i.ios to float
  %.sroa.0.0.i3689 = select nsz i1 %.not.i3688, float %i.ioq, float %i.iot
  %i.iou = extractelement <4 x float> %i.imm, i64 3
  %i.iov = fadd reassoc nsz arcp contract afn float %.sroa.0.0.i3689, %i.iou
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gu
  %.03156 = phi nsz float [ %i.ioo, %bb.gu ], [ %i.iov, %bb.gv ]
  %i.iow = getelementptr [4 x i8], ptr %i.k, i64 %indvars.iv4302
  %i.iox = getelementptr i8, ptr %i.iow, i64 -640
  %i.ioy = load float, ptr %i.iox, align 4, !tbaa !13 ; 2 uses
  %i.ioz = fmul reassoc nsz arcp contract afn float %i.ioy, %.03158
  %i.ipa = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv4302
  %i.ipb = getelementptr inbounds nuw i8, ptr %i.ipa, i64 640
  %i.ipc = load float, ptr %i.ipb, align 4, !tbaa !13 ; 2 uses
  %i.ipd = fmul reassoc nsz arcp contract afn float %i.ipc, %.03159
  %i.ipe = fadd reassoc nsz arcp contract afn float %i.ipd, %i.ioz
  %i.ipf = fadd reassoc nsz arcp contract afn float %i.ipc, %i.ioy
  %i.ipg = fdiv reassoc nsz arcp contract afn float %i.ipe, %i.ipf ; 14 uses
  %i.iph = getelementptr [4 x i8], ptr %i.m, i64 %indvars.iv4302
  %i.ipi = getelementptr i8, ptr %i.iph, i64 -4
  %i.ipj = load float, ptr %i.ipi, align 4, !tbaa !13 ; 2 uses
  %i.ipk = fmul reassoc nsz arcp contract afn float %i.ipj, %.03156
  %i.ipl = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv4302
  %i.ipm = getelementptr inbounds nuw i8, ptr %i.ipl, i64 4
  %i.ipn = load float, ptr %i.ipm, align 4, !tbaa !13 ; 2 uses
  %i.ipo = fmul reassoc nsz arcp contract afn float %i.ipn, %.03157
  %i.ipp = fadd reassoc nsz arcp contract afn float %i.ipo, %i.ipk
  %i.ipq = fadd reassoc nsz arcp contract afn float %i.ipn, %i.ipj
  %i.ipr = fdiv reassoc nsz arcp contract afn float %i.ipp, %i.ipq ; 14 uses
  %i.ips = fcmp reassoc nsz arcp contract afn olt float %i.ipg, %i.imj
  br i1 %i.ips, label %bb.gx, label %bb.hj

bb.gx:                                            ; preds = %bb.gw
  %i.ipt = fmul reassoc nsz arcp contract afn float %i.ipg, 2.000000e+00
  %i.ipu = fcmp reassoc nsz arcp contract afn olt float %i.ipt, %i.imj
  br i1 %i.ipu, label %bb.gy, label %bb.hd

bb.gy:                                            ; preds = %bb.gx
  %i.ipv = extractelement <4 x float> %i.imm, i64 0 ; 5 uses
  %i.ipw = extractelement <4 x float> %i.imm, i64 1 ; 5 uses
  %i.ipx = fcmp reassoc nsz arcp contract afn olt float %i.ipv, %i.ipw
  br i1 %i.ipx, label %bb.gz, label %bb.hb

bb.gz:                                            ; preds = %bb.gy
  %i.ipy = fcmp reassoc nsz arcp contract afn olt float %i.ipg, %i.ipw
  %.3590 = select reassoc nsz arcp contract afn i1 %i.ipy, float %i.ipg, float %i.ipw ; 2 uses
  %i.ipz = fcmp reassoc nsz arcp contract afn ogt float %i.ipv, %.3590
  br i1 %i.ipz, label %bb.hj, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  br label %bb.hj

bb.hb:                                            ; preds = %bb.gy
  %i.iqa = fcmp reassoc nsz arcp contract afn olt float %i.ipg, %i.ipv
  %.3592 = select reassoc nsz arcp contract afn i1 %i.iqa, float %i.ipg, float %i.ipv ; 2 uses
  %i.iqb = fcmp reassoc nsz arcp contract afn ogt float %i.ipw, %.3592
  br i1 %i.iqb, label %bb.hj, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  br label %bb.hj

bb.hd:                                            ; preds = %bb.gx
  %i.iqc = fsub reassoc nsz arcp contract afn float %i.imj, %i.ipg
  %i.iqd = fpext reassoc nsz arcp contract afn float %i.iqc to double
  %i.iqe = fmul reassoc nsz arcp contract afn double %i.iqd, 2.000000e+00
  %i.iqf = fadd reassoc nsz arcp contract afn float %i.imk, %i.ipg
  %i.iqg = fpext reassoc nsz arcp contract afn float %i.iqf to double
  %i.iqh = fdiv reassoc nsz arcp contract afn double %i.iqe, %i.iqg
  %i.iqi = fptrunc reassoc nsz arcp contract afn double %i.iqh to float
  %i.iqj = extractelement <4 x float> %i.imm, i64 0 ; 5 uses
end_hunk_1

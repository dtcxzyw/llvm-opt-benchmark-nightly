Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/amaze?download=true
inline.NumInlined: 126
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 42
begin_hunk_0_@amaze_demosaic:bb.a
  %.sroa.0.0.i3673 = select nsz i1 %.not.i3672, float %i.hva, float %i.hvf
  %i.hvg = fcmp reassoc nsz arcp contract afn olt float %.sroa.0.0.i3673, %i.hvb
  br i1 %i.hvg, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.hvh = load float, ptr %i.hko, align 4, !tbaa !322 ; 3 uses
  %i.hvi = load float, ptr %i.hkp, align 4, !tbaa !322 ; 3 uses
  %i.hvj = fcmp reassoc nsz arcp contract afn olt float %i.hvh, %i.hvi ; 2 uses
  %.4815 = select i1 %i.hvj, float %i.hvi, float %i.hvh ; 2 uses
  %.4816 = select i1 %i.hvj, float %i.hvh, float %i.hvi ; 2 uses
  %i.hvk = fcmp reassoc nsz arcp contract afn olt float %i.hva, %.4815
  %.3576 = select reassoc nsz arcp contract afn i1 %i.hvk, float %i.hva, float %.4815 ; 2 uses
  %i.hvl = fcmp reassoc nsz arcp contract afn ogt float %.4816, %.3576
  %spec.select3819 = select reassoc nsz arcp contract afn i1 %i.hvl, float %.4816, float %.3576
  br label %.sink.split4754

bb.cq:                                            ; preds = %bb.co
  %i.hvm = fsub reassoc nsz arcp contract afn float %i.hvb, %i.hva ; 3 uses
  %.not.i3674 = fcmp oeq float %i.hvm, 0.000000e+00
  %i.hvn = bitcast float %i.hvm to i32
  %i.hvo = add i32 %i.hvn, 8388608
  %i.hvp = bitcast i32 %i.hvo to float
  %.sroa.0.0.i3675 = select nsz i1 %.not.i3674, float %i.hvm, float %i.hvp
  %i.hvq = fadd reassoc nsz arcp contract afn float %i.hva, f0x3727C5AC
  %i.hvr = fadd reassoc nsz arcp contract afn float %i.hvq, %i.hvb
  %i.hvs = load float, ptr %i.hko, align 4, !tbaa !322 ; 3 uses
  %i.hvt = load float, ptr %i.hkp, align 4, !tbaa !322 ; 3 uses
  %i.hvu = fcmp reassoc nsz arcp contract afn olt float %i.hvs, %i.hvt ; 2 uses
  %.4817 = select i1 %i.hvu, float %i.hvt, float %i.hvs ; 2 uses
  %.4818 = select i1 %i.hvu, float %i.hvs, float %i.hvt ; 2 uses
  %i.hvv = fcmp reassoc nsz arcp contract afn olt float %i.hva, %.4817
  %.3580 = select reassoc nsz arcp contract afn i1 %i.hvv, float %i.hva, float %.4817 ; 2 uses
  %i.hvw = fcmp reassoc nsz arcp contract afn ogt float %.4818, %.3580
  %spec.select3821 = select reassoc nsz arcp contract afn i1 %i.hvw, float %.4818, float %.3580 ; 2 uses
  %i.hvx = fsub reassoc nsz arcp contract afn float %i.hva, %spec.select3821
  %i.hvy = fmul reassoc nsz arcp contract afn float %i.hvx, %.sroa.0.0.i3675
  %i.hvz = fdiv reassoc nsz arcp contract afn float %i.hvy, %i.hvr
  %i.hwa = fadd reassoc nsz arcp contract afn float %i.hvz, %spec.select3821
  br label %.sink.split4754

.sink.split4754:                                  ; preds = %bb.cq, %bb.cp
  %spec.select3819.sink = phi float [ %spec.select3819, %bb.cp ], [ %i.hwa, %bb.cq ] ; 2 uses
  store float %spec.select3819.sink, ptr %i.hpc, align 4, !tbaa !322
  br label %bb.cr

bb.cr:                                            ; preds = %.sink.split4754, %bb.cn
  %i.hwb = phi float [ %i.hva, %bb.cn ], [ %spec.select3819.sink, %.sink.split4754 ] ; 3 uses
  %i.hwc = load float, ptr %i.hpi, align 4, !tbaa !322 ; 3 uses
  %i.hwd = fcmp reassoc nsz arcp contract afn ogt float %i.hwc, %5
  br i1 %i.hwd, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.hwe = load float, ptr %i.hkl, align 4, !tbaa !322 ; 3 uses
  %i.hwf = load float, ptr %i.hkn, align 4, !tbaa !322 ; 3 uses
  %i.hwg = fcmp reassoc nsz arcp contract afn olt float %i.hwe, %i.hwf ; 2 uses
  %.4819 = select i1 %i.hwg, float %i.hwf, float %i.hwe ; 2 uses
  %.4820 = select i1 %i.hwg, float %i.hwe, float %i.hwf ; 2 uses
  %i.hwh = fcmp reassoc nsz arcp contract afn olt float %i.hwc, %.4819
  %.3584 = select reassoc nsz arcp contract afn i1 %i.hwh, float %i.hwc, float %.4819 ; 2 uses
  %i.hwi = fcmp reassoc nsz arcp contract afn ogt float %.4820, %.3584
  %spec.select3823 = select reassoc nsz arcp contract afn i1 %i.hwi, float %.4820, float %.3584
  store float %spec.select3823, ptr %i.hpi, align 4, !tbaa !322
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.hwj = fcmp reassoc nsz arcp contract afn ogt float %i.hwb, %5
  br i1 %i.hwj, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.hwk = load float, ptr %i.hko, align 4, !tbaa !322 ; 3 uses
  %i.hwl = load float, ptr %i.hkp, align 4, !tbaa !322 ; 3 uses
  %i.hwm = fcmp reassoc nsz arcp contract afn olt float %i.hwk, %i.hwl ; 2 uses
  %.4821 = select i1 %i.hwm, float %i.hwl, float %i.hwk ; 2 uses
  %.4822 = select i1 %i.hwm, float %i.hwk, float %i.hwl ; 2 uses
  %i.hwn = fcmp reassoc nsz arcp contract afn olt float %i.hwb, %.4821
  %.3588 = select reassoc nsz arcp contract afn i1 %i.hwn, float %i.hwb, float %.4821 ; 2 uses
  %i.hwo = fcmp reassoc nsz arcp contract afn ogt float %.4822, %.3588
  %spec.select3825 = select reassoc nsz arcp contract afn i1 %i.hwo, float %.4822, float %.3588
  store float %spec.select3825, ptr %i.hpc, align 4, !tbaa !322
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.hwp = add nuw nsw i32 %.031744093, 2         ; 2 uses
  %indvars.iv.next4340 = add nuw nsw i64 %indvars.iv4339, 1
  %i.hwq = icmp slt i32 %i.hwp, %i.hfp
  br i1 %i.hwq, label %.lr.ph4097, label %._crit_edge4098, !llvm.loop !279

.preheader3916:                                   ; preds = %._crit_edge4106
  br i1 %i.de, label %.lr.ph4116, label %.preheader3915

.lr.ph4116:                                       ; preds = %.preheader3916
  %i.hwr = add nsw i32 %i.ih, -12                 ; 2 uses
  %i.hws = add i32 %i.if, -9
  %i.hwt = add i32 %i.if, -9
  %i.hwu = add i32 %i.if, -9
  br label %bb.cz

bb.cw:                                            ; preds = %.lr.ph4108, %._crit_edge4106
  %indvars.iv4344 = phi i32 [ 1610, %.lr.ph4108 ], [ %indvars.iv.next4345, %._crit_edge4106 ] ; 2 uses
  %.031674107 = phi i32 [ 10, %.lr.ph4108 ], [ %i.hxe, %._crit_edge4106 ] ; 2 uses
  %i.hwv = shl i32 %.031674107, 2
  %i.hww = and i32 %i.hwv, 28
  %i.hwx = lshr i32 %4, %i.hww
  %i.hwy = and i32 %i.hwx, 1                      ; 2 uses
  %i.hwz = or disjoint i32 %i.hwy, 10             ; 2 uses
  %i.hxa = icmp slt i32 %i.hwz, %i.hjc
  br i1 %i.hxa, label %.lr.ph4105.preheader, label %._crit_edge4106

.lr.ph4105.preheader:                             ; preds = %bb.cw
  %i.hxb = or disjoint i32 %indvars.iv4344, %i.hwy
  %i.hxc = zext i32 %i.hxb to i64                 ; 2 uses
  %i.hxd = lshr i64 %i.hxc, 1
  br label %.lr.ph4105

._crit_edge4106:                                  ; preds = %bb.cy, %bb.cw
  %i.hxe = add nuw nsw i32 %.031674107, 1         ; 2 uses
  %i.hxf = icmp slt i32 %i.hxe, %i.db
  %indvars.iv.next4345 = add i32 %indvars.iv4344, 160
  br i1 %i.hxf, label %bb.cw, label %.preheader3916, !llvm.loop !280

.lr.ph4105:                                       ; preds = %.lr.ph4105.preheader, %bb.cy
  %indvars.iv4348 = phi i64 [ %i.hxc, %.lr.ph4105.preheader ], [ %indvars.iv.next4349, %bb.cy ] ; 5 uses
  %indvars.iv4346 = phi i64 [ %i.hxd, %.lr.ph4105.preheader ], [ %indvars.iv.next4347, %bb.cy ] ; 5 uses
  %.031664101 = phi i32 [ %i.hwz, %.lr.ph4105.preheader ], [ %i.hze, %bb.cy ]
  %i.hxg = trunc nuw i64 %indvars.iv4348 to i32   ; 2 uses
  %i.hxh = add nsw i32 %i.hxg, -161
  %i.hxi = ashr i32 %i.hxh, 1
  %i.hxj = sext i32 %i.hxi to i64
  %i.hxk = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.hxj
  %i.hxl = load float, ptr %i.hxk, align 4, !tbaa !322
  %i.hxm = add nsw i32 %i.hxg, -159
  %i.hxn = ashr i32 %i.hxm, 1
  %i.hxo = sext i32 %i.hxn to i64
  %i.hxp = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.hxo
  %i.hxq = load float, ptr %i.hxp, align 4, !tbaa !322
  %i.hxr = fadd reassoc nsz arcp contract afn float %i.hxq, %i.hxl
  %i.hxs = add nuw i64 %indvars.iv4348, 159
  %i.hxt = lshr i64 %i.hxs, 1
  %i.hxu = and i64 %i.hxt, 2147483647
  %i.hxv = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.hxu
  %i.hxw = load float, ptr %i.hxv, align 4, !tbaa !322
  %i.hxx = fadd reassoc nsz arcp contract afn float %i.hxr, %i.hxw
  %i.hxy = add nuw i64 %indvars.iv4348, 161
  %i.hxz = lshr i64 %i.hxy, 1
  %i.hya = and i64 %i.hxz, 2147483647
  %i.hyb = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.hya
  %i.hyc = load float, ptr %i.hyb, align 4, !tbaa !322
  %i.hyd = fadd reassoc nsz arcp contract afn float %i.hxx, %i.hyc ; 3 uses
  %.not.i3677 = fcmp oeq float %i.hyd, 0.000000e+00
  %i.hye = bitcast float %i.hyd to i32
  %i.hyf = add i32 %i.hye, -16777216
  %i.hyg = bitcast i32 %i.hyf to float
  %.sroa.0.0.i3678 = select nsz i1 %.not.i3677, float %i.hyd, float %i.hyg ; 3 uses
  %i.hyh = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv4346 ; 2 uses
  %i.hyi = load float, ptr %i.hyh, align 4, !tbaa !322 ; 2 uses
  %i.hyj = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.hyi
  %i.hyk = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hyj)
  %i.hyl = fsub reassoc nsz arcp contract afn float 5.000000e-01, %.sroa.0.0.i3678
  %i.hym = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hyl)
  %i.hyn = fcmp reassoc nsz arcp contract afn olt float %i.hyk, %i.hym
  br i1 %i.hyn, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %.lr.ph4105
  store float %.sroa.0.0.i3678, ptr %i.hyh, align 4, !tbaa !322
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %.lr.ph4105
  %i.hyo = phi float [ %.sroa.0.0.i3678, %bb.cx ], [ %i.hyi, %.lr.ph4105 ] ; 2 uses
  %i.hyp = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv4348
  %i.hyq = load float, ptr %i.hyp, align 4, !tbaa !322
  %i.hyr = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv4346
  %i.hys = load float, ptr %i.hyr, align 4, !tbaa !322
  %i.hyt = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.hyo
  %i.hyu = fmul reassoc nsz arcp contract afn float %i.hyt, %i.hys
  %i.hyv = fadd reassoc nsz arcp contract afn float %i.hyq, %i.hyu
  %i.hyw = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv4346
  %i.hyx = load float, ptr %i.hyw, align 4, !tbaa !322
  %i.hyy = fmul reassoc nsz arcp contract afn float %i.hyx, %i.hyo
  %i.hyz = fadd reassoc nsz arcp contract afn float %i.hyv, %i.hyy ; 3 uses
  %.not.i3679 = fcmp oeq float %i.hyz, 0.000000e+00
  %i.hza = bitcast float %i.hyz to i32
  %i.hzb = add i32 %i.hza, -8388608
  %i.hzc = bitcast i32 %i.hzb to float
  %.sroa.0.0.i3680 = select nsz i1 %.not.i3679, float %i.hyz, float %i.hzc
  %i.hzd = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv4346
  store float %.sroa.0.0.i3680, ptr %i.hzd, align 4, !tbaa !322
  %i.hze = add nuw nsw i32 %.031664101, 2         ; 2 uses
  %indvars.iv.next4349 = add nuw nsw i64 %indvars.iv4348, 2
  %indvars.iv.next4347 = add nuw nsw i64 %indvars.iv4346, 1
  %i.hzf = icmp slt i32 %i.hze, %i.hjc
  br i1 %i.hzf, label %.lr.ph4105, label %._crit_edge4106, !llvm.loop !281

.preheader3915:                                   ; preds = %._crit_edge4114, %.preheader3925, %.preheader3927, %.loopexit3929, %.preheader3918, %.preheader3917, %.preheader3916
  br i1 %i.df, label %.lr.ph4123, label %.preheader3914

.lr.ph4123:                                       ; preds = %.preheader3915
  %i.hzg = add i32 %i.ih, -12
  br label %bb.ei

bb.cz:                                            ; preds = %.lr.ph4116, %._crit_edge4114
  %indvar4879 = phi i32 [ 0, %.lr.ph4116 ], [ %indvar.next4880, %._crit_edge4114 ] ; 2 uses
  %indvars.iv4351 = phi i32 [ 1932, %.lr.ph4116 ], [ %indvars.iv.next4352, %._crit_edge4114 ] ; 6 uses
  %.031634115 = phi i32 [ 12, %.lr.ph4116 ], [ %i.iiv, %._crit_edge4114 ] ; 2 uses
  %i.hzh = mul i32 %indvar4879, 160
  %6 = add i32 %i.hzh, 1920
  %i.hzi = zext i32 %6 to i64
  %i.hzj = shl nuw nsw i64 %i.hzi, 1              ; 7 uses
  %scevgep4881.a = getelementptr i8, ptr %scevgep4878, i64 %i.hzj ; 2 uses
  %scevgep4885.a = getelementptr i8, ptr %scevgep4884.a, i64 %i.hzj ; 2 uses
  %scevgep4893.a = getelementptr i8, ptr %scevgep4892.a, i64 %i.hzj ; 2 uses
  %scevgep4901.a = getelementptr i8, ptr %scevgep4900.a, i64 %i.hzj ; 2 uses
  %scevgep4909.a = getelementptr i8, ptr %scevgep4908.a, i64 %i.hzj ; 2 uses
  %scevgep4929.a = getelementptr i8, ptr %scevgep4928.a, i64 %i.hzj ; 2 uses
  %i.hzk = shl i32 %.031634115, 2
  %i.hzl = and i32 %i.hzk, 28
  %i.hzm = lshr i32 %4, %i.hzl
  %i.hzn = and i32 %i.hzm, 1                      ; 6 uses
  %i.hzo = or disjoint i32 %i.hzn, 12             ; 5 uses
  %i.hzp = icmp slt i32 %i.hzo, %i.hwr
  br i1 %i.hzp, label %.lr.ph4113.preheader, label %._crit_edge4114

.lr.ph4113.preheader:                             ; preds = %bb.cz
  %i.hzq = or disjoint i32 %indvars.iv4351, %i.hzn
  %i.hzr = lshr exact i32 %indvars.iv4351, 1
  %i.hzs = zext nneg i32 %i.hzr to i64            ; 5 uses
  %i.hzt = sext i32 %i.hzq to i64                 ; 6 uses
  %i.hzu = or disjoint i32 %i.hr, %i.hzn
  %i.hzv = sub i32 %i.hws, %i.hzu                 ; 2 uses
  %i.hzw = lshr i32 %i.hzv, 1
  %narrow7451 = add nuw i32 %i.hzw, 1
  %i.hzx = zext i32 %narrow7451 to i64            ; 2 uses
  %min.iters.check5075 = icmp ult i32 %i.hzv, 30
  br i1 %min.iters.check5075, label %.lr.ph4113.preheader7464, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph4113.preheader
  %i.hzy = or disjoint i32 %i.ht, %i.hzn
  %i.hzz = sub i32 %i.hwt, %i.hzy
  %i.iaa = lshr i32 %i.hzz, 1
  %i.iab = lshr exact i32 %indvars.iv4351, 1
  %i.iac = trunc nuw i32 %i.iab to i31
  %i.iad = trunc nuw i32 %i.iaa to i31
  %i.iae = xor i31 %i.iac, -1
  %i.iaf = icmp ult i31 %i.iae, %i.iad
  br i1 %i.iaf, label %.lr.ph4113.preheader7464, label %vector.memcheck4858

vector.memcheck4858:                              ; preds = %vector.scevcheck
  %i.iag = or disjoint i32 %indvars.iv4351, %i.hzn
  %i.iah = sext i32 %i.iag to i64
  %i.iai = shl nsw i64 %i.iah, 2                  ; 11 uses
  %scevgep4859 = getelementptr i8, ptr %i.i, i64 %i.iai ; 18 uses
  %i.iaj = or disjoint i32 %i.hs, %i.hzn
  %i.iak = sub i32 %i.hwu, %i.iaj
  %i.ial = lshr i32 %i.iak, 1
  %i.iam = zext nneg i32 %i.ial to i64            ; 2 uses
  %i.ian = shl nuw nsw i64 %i.iam, 3
  %i.iao = add nsw i64 %i.ian, %i.iai             ; 10 uses
  %scevgep4861 = getelementptr i8, ptr %scevgep4860, i64 %i.iao ; 18 uses
  %i.iap = lshr exact i32 %indvars.iv4351, 1
  %i.iaq = zext nneg i32 %i.iap to i64
  %i.iar = shl nuw nsw i64 %i.iaq, 2              ; 4 uses
  %scevgep4863 = getelementptr i8, ptr %scevgep4862, i64 %i.iar ; 18 uses
  %i.ias = shl nuw nsw i64 %i.iam, 2              ; 2 uses
  %i.iat = add nuw nsw i64 %i.ias, %i.iar         ; 3 uses
  %scevgep4865 = getelementptr i8, ptr %scevgep4864, i64 %i.iat ; 18 uses
  %scevgep4867 = getelementptr i8, ptr %scevgep4866, i64 %i.iar ; 2 uses
  %scevgep4869 = getelementptr i8, ptr %scevgep4868, i64 %i.iat ; 2 uses
  %scevgep4871 = getelementptr i8, ptr %scevgep4870, i64 %i.iar ; 2 uses
  %scevgep4873 = getelementptr i8, ptr %scevgep4872, i64 %i.iat ; 2 uses
  %scevgep4875 = getelementptr i8, ptr %scevgep4874, i64 %i.iai ; 2 uses
  %scevgep4877 = getelementptr i8, ptr %scevgep4876, i64 %i.iao ; 2 uses
  %i.iau = add nuw nsw i64 %i.ias, %i.hzj         ; 6 uses
  %scevgep4883 = getelementptr i8, ptr %scevgep4882.a, i64 %i.iau ; 2 uses
  %scevgep4887.a = getelementptr i8, ptr %scevgep4886.a, i64 %i.iau ; 2 uses
  %scevgep4889.a = getelementptr i8, ptr %scevgep4888.a, i64 %i.iai ; 2 uses
  %scevgep4891 = getelementptr i8, ptr %scevgep4890.a, i64 %i.iao ; 2 uses
  %scevgep4895.a = getelementptr i8, ptr %scevgep4894.a, i64 %i.iau ; 2 uses
  %scevgep4897.a = getelementptr i8, ptr %scevgep4896.a, i64 %i.iai ; 2 uses
  %scevgep4899 = getelementptr i8, ptr %scevgep4898.a, i64 %i.iao ; 2 uses
  %scevgep4903.a = getelementptr i8, ptr %scevgep4902.a, i64 %i.iau ; 2 uses
  %scevgep4905.a = getelementptr i8, ptr %scevgep4904.a, i64 %i.iai ; 2 uses
  %scevgep4907 = getelementptr i8, ptr %scevgep4906.a, i64 %i.iao ; 2 uses
  %scevgep4911.a = getelementptr i8, ptr %scevgep4910.a, i64 %i.iau ; 2 uses
  %scevgep4913.a = getelementptr i8, ptr %scevgep4912.a, i64 %i.iai ; 2 uses
  %scevgep4915.a = getelementptr i8, ptr %scevgep4914.a, i64 %i.iao ; 2 uses
  %scevgep4917.a = getelementptr i8, ptr %scevgep4916.a, i64 %i.iai ; 2 uses
  %scevgep4919.a = getelementptr i8, ptr %scevgep4918.a, i64 %i.iao ; 2 uses
  %scevgep4921.a = getelementptr i8, ptr %scevgep4920.a, i64 %i.iai ; 2 uses
  %scevgep4923.a = getelementptr i8, ptr %scevgep4922.a, i64 %i.iao ; 2 uses
  %scevgep4925.a = getelementptr i8, ptr %scevgep4924.a, i64 %i.iai ; 2 uses
  %scevgep4927 = getelementptr i8, ptr %scevgep4926.a, i64 %i.iao ; 2 uses
  %scevgep4931.a = getelementptr i8, ptr %scevgep4930.a, i64 %i.iau ; 2 uses
  %scevgep4933.a = getelementptr i8, ptr %scevgep4932.a, i64 %i.iai ; 2 uses
  %scevgep4935 = getelementptr i8, ptr %scevgep4934, i64 %i.iao ; 2 uses
  %bound04936 = icmp ult ptr %scevgep4859, %scevgep4865
  %bound14937 = icmp ult ptr %scevgep4863, %scevgep4861
  %found.conflict4938 = and i1 %bound04936, %bound14937
  %bound04939 = icmp ult ptr %scevgep4859, %scevgep4869
  %bound14940 = icmp ult ptr %scevgep4867, %scevgep4861
  %found.conflict4941 = and i1 %bound04939, %bound14940
  %conflict.rdx = or i1 %found.conflict4938, %found.conflict4941
  %bound04942 = icmp ult ptr %scevgep4859, %scevgep4873
  %bound14943 = icmp ult ptr %scevgep4871, %scevgep4861
  %found.conflict4944 = and i1 %bound04942, %bound14943
  %conflict.rdx4945 = or i1 %conflict.rdx, %found.conflict4944
  %bound04946 = icmp ult ptr %scevgep4859, %scevgep4877
  %bound14947 = icmp ult ptr %scevgep4875, %scevgep4861
  %found.conflict4948 = and i1 %bound04946, %bound14947
  %conflict.rdx4949 = or i1 %conflict.rdx4945, %found.conflict4948
  %bound04950 = icmp ult ptr %scevgep4859, %scevgep4883
  %bound14951 = icmp ult ptr %scevgep4881.a, %scevgep4861
  %found.conflict4952 = and i1 %bound04950, %bound14951
  %conflict.rdx4953 = or i1 %conflict.rdx4949, %found.conflict4952
  %bound04954 = icmp ult ptr %scevgep4859, %scevgep4887.a
  %bound14955 = icmp ult ptr %scevgep4885.a, %scevgep4861
  %found.conflict4956 = and i1 %bound04954, %bound14955
  %conflict.rdx4957 = or i1 %conflict.rdx4953, %found.conflict4956
  %bound04958 = icmp ult ptr %scevgep4859, %scevgep4891
  %bound14959 = icmp ult ptr %scevgep4889.a, %scevgep4861
  %found.conflict4960 = and i1 %bound04958, %bound14959
  %conflict.rdx4961 = or i1 %conflict.rdx4957, %found.conflict4960
  %bound04962 = icmp ult ptr %scevgep4859, %scevgep4895.a
  %bound14963 = icmp ult ptr %scevgep4893.a, %scevgep4861
  %found.conflict4964 = and i1 %bound04962, %bound14963
  %conflict.rdx4965 = or i1 %conflict.rdx4961, %found.conflict4964
  %bound04966 = icmp ult ptr %scevgep4859, %scevgep4899
  %bound14967 = icmp ult ptr %scevgep4897.a, %scevgep4861
  %found.conflict4968 = and i1 %bound04966, %bound14967
  %conflict.rdx4969 = or i1 %conflict.rdx4965, %found.conflict4968
  %bound04970 = icmp ult ptr %scevgep4859, %scevgep4903.a
  %bound14971 = icmp ult ptr %scevgep4901.a, %scevgep4861
  %found.conflict4972 = and i1 %bound04970, %bound14971
  %conflict.rdx4973 = or i1 %conflict.rdx4969, %found.conflict4972
  %bound04974 = icmp ult ptr %scevgep4859, %scevgep4907
  %bound14975 = icmp ult ptr %scevgep4905.a, %scevgep4861
  %found.conflict4976 = and i1 %bound04974, %bound14975
  %conflict.rdx4977 = or i1 %conflict.rdx4973, %found.conflict4976
  %bound04978 = icmp ult ptr %scevgep4859, %scevgep4911.a
  %bound14979 = icmp ult ptr %scevgep4909.a, %scevgep4861
  %found.conflict4980 = and i1 %bound04978, %bound14979
  %conflict.rdx4981 = or i1 %conflict.rdx4977, %found.conflict4980
  %bound04982 = icmp ult ptr %scevgep4859, %scevgep4915.a
  %bound14983 = icmp ult ptr %scevgep4913.a, %scevgep4861
  %found.conflict4984 = and i1 %bound04982, %bound14983
  %conflict.rdx4985 = or i1 %conflict.rdx4981, %found.conflict4984
  %bound04986 = icmp ult ptr %scevgep4859, %scevgep4919.a
  %bound14987 = icmp ult ptr %scevgep4917.a, %scevgep4861
  %found.conflict4988 = and i1 %bound04986, %bound14987
  %conflict.rdx4989 = or i1 %conflict.rdx4985, %found.conflict4988
  %bound04990 = icmp ult ptr %scevgep4859, %scevgep4923.a
  %bound14991 = icmp ult ptr %scevgep4921.a, %scevgep4861
  %found.conflict4992 = and i1 %bound04990, %bound14991
  %conflict.rdx4993 = or i1 %conflict.rdx4989, %found.conflict4992
  %bound04994 = icmp ult ptr %scevgep4859, %scevgep4927
  %bound14995 = icmp ult ptr %scevgep4925.a, %scevgep4861
  %found.conflict4996 = and i1 %bound04994, %bound14995
  %conflict.rdx4997 = or i1 %conflict.rdx4993, %found.conflict4996
  %bound04998 = icmp ult ptr %scevgep4859, %scevgep4931.a
  %bound14999 = icmp ult ptr %scevgep4929.a, %scevgep4861
  %found.conflict5000 = and i1 %bound04998, %bound14999
  %conflict.rdx5001 = or i1 %conflict.rdx4997, %found.conflict5000
  %bound05002 = icmp ult ptr %scevgep4859, %scevgep4935
  %bound15003 = icmp ult ptr %scevgep4933.a, %scevgep4861
  %found.conflict5004 = and i1 %bound05002, %bound15003
  %conflict.rdx5005 = or i1 %conflict.rdx5001, %found.conflict5004
  %bound05006 = icmp ult ptr %scevgep4863, %scevgep4869
  %bound15007 = icmp ult ptr %scevgep4867, %scevgep4865
  %found.conflict5008 = and i1 %bound05006, %bound15007
  %conflict.rdx5009 = or i1 %conflict.rdx5005, %found.conflict5008
  %bound05010 = icmp ult ptr %scevgep4863, %scevgep4873
  %bound15011 = icmp ult ptr %scevgep4871, %scevgep4865
  %found.conflict5012 = and i1 %bound05010, %bound15011
  %conflict.rdx5013 = or i1 %conflict.rdx5009, %found.conflict5012
  %bound05014 = icmp ult ptr %scevgep4863, %scevgep4877
  %bound15015 = icmp ult ptr %scevgep4875, %scevgep4865
  %found.conflict5016 = and i1 %bound05014, %bound15015
  %conflict.rdx5017 = or i1 %conflict.rdx5013, %found.conflict5016
  %bound05018 = icmp ult ptr %scevgep4863, %scevgep4883
  %bound15019 = icmp ult ptr %scevgep4881.a, %scevgep4865
  %found.conflict5020 = and i1 %bound05018, %bound15019
  %conflict.rdx5021 = or i1 %conflict.rdx5017, %found.conflict5020
  %bound05022 = icmp ult ptr %scevgep4863, %scevgep4887.a
  %bound15023 = icmp ult ptr %scevgep4885.a, %scevgep4865
  %found.conflict5024 = and i1 %bound05022, %bound15023
  %conflict.rdx5025 = or i1 %conflict.rdx5021, %found.conflict5024
  %bound05026 = icmp ult ptr %scevgep4863, %scevgep4891
  %bound15027 = icmp ult ptr %scevgep4889.a, %scevgep4865
  %found.conflict5028 = and i1 %bound05026, %bound15027
  %conflict.rdx5029 = or i1 %conflict.rdx5025, %found.conflict5028
  %bound05030 = icmp ult ptr %scevgep4863, %scevgep4895.a
  %bound15031 = icmp ult ptr %scevgep4893.a, %scevgep4865
  %found.conflict5032 = and i1 %bound05030, %bound15031
  %conflict.rdx5033 = or i1 %conflict.rdx5029, %found.conflict5032
  %bound05034 = icmp ult ptr %scevgep4863, %scevgep4899
  %bound15035 = icmp ult ptr %scevgep4897.a, %scevgep4865
  %found.conflict5036 = and i1 %bound05034, %bound15035
  %conflict.rdx5037 = or i1 %conflict.rdx5033, %found.conflict5036
  %bound05038 = icmp ult ptr %scevgep4863, %scevgep4903.a
  %bound15039 = icmp ult ptr %scevgep4901.a, %scevgep4865
  %found.conflict5040 = and i1 %bound05038, %bound15039
  %conflict.rdx5041 = or i1 %conflict.rdx5037, %found.conflict5040
  %bound05042 = icmp ult ptr %scevgep4863, %scevgep4907
  %bound15043 = icmp ult ptr %scevgep4905.a, %scevgep4865
  %found.conflict5044 = and i1 %bound05042, %bound15043
  %conflict.rdx5045 = or i1 %conflict.rdx5041, %found.conflict5044
  %bound05046 = icmp ult ptr %scevgep4863, %scevgep4911.a
  %bound15047 = icmp ult ptr %scevgep4909.a, %scevgep4865
end_hunk_0
begin_hunk_1_@amaze_demosaic:bb.a
  %i.icx = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.load5088, %wide.masked.load5089 ; 3 uses
  %i.icy = fcmp oeq <8 x float> %i.icx, zeroinitializer
  %i.icz = bitcast <8 x float> %i.icx to <8 x i32>
  %i.ida = add <8 x i32> %i.icz, splat (i32 -8388608)
  %i.idb = bitcast <8 x i32> %i.ida to <8 x float>
  %i.idc = select nsz <8 x i1> %i.icy, <8 x float> %i.icx, <8 x float> %i.idb
  %i.idd = fadd reassoc nsz arcp contract afn <8 x float> %i.idc, %wide.masked.gather
  %i.ide = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.load5088, %i.ibv
  %predphi5099.a = select nsz <8 x i1> %i.icw, <8 x float> %i.ide, <8 x float> %i.idd
  %i.idf = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.icd
  %i.idg = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.idf)
  %i.idh = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.idg, splat (float 7.500000e-01)
  %i.idi = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.load5088, %wide.masked.load5092 ; 3 uses
  %i.idj = fcmp oeq <8 x float> %i.idi, zeroinitializer
  %i.idk = bitcast <8 x float> %i.idi to <8 x i32>
  %i.idl = add <8 x i32> %i.idk, splat (i32 -8388608)
  %i.idm = bitcast <8 x i32> %i.idl to <8 x float>
  %i.idn = select nsz <8 x i1> %i.idj, <8 x float> %i.idi, <8 x float> %i.idm
  %i.ido = fadd reassoc nsz arcp contract afn <8 x float> %i.idn, %wide.masked.gather5091
  %i.idp = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.load5088, %i.icd
  %predphi5100.a = select nsz <8 x i1> %i.idh, <8 x float> %i.idp, <8 x float> %i.ido
  %i.idq = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.icl
  %i.idr = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.idq)
  %i.ids = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.idr, splat (float 7.500000e-01)
  %i.idt = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.load5088, %wide.masked.load5095 ; 3 uses
  %i.idu = fcmp oeq <8 x float> %i.idt, zeroinitializer
  %i.idv = bitcast <8 x float> %i.idt to <8 x i32>
  %i.idw = add <8 x i32> %i.idv, splat (i32 -8388608)
  %i.idx = bitcast <8 x i32> %i.idw to <8 x float>
  %i.idy = select nsz <8 x i1> %i.idu, <8 x float> %i.idt, <8 x float> %i.idx
  %i.idz = fadd reassoc nsz arcp contract afn <8 x float> %i.idy, %wide.masked.gather5094
  %i.iea = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.load5088, %i.icl
  %predphi5101 = select nsz <8 x i1> %i.ids, <8 x float> %i.iea, <8 x float> %i.idz
  %i.ieb = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.ict
  %i.iec = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ieb)
  %i.ied = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.iec, splat (float 7.500000e-01)
  %i.iee = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.load5088, %wide.masked.load5098 ; 3 uses
  %i.ief = fcmp oeq <8 x float> %i.iee, zeroinitializer
  %i.ieg = bitcast <8 x float> %i.iee to <8 x i32>
  %i.ieh = add <8 x i32> %i.ieg, splat (i32 -8388608)
  %i.iei = bitcast <8 x i32> %i.ieh to <8 x float>
  %i.iej = select nsz <8 x i1> %i.ief, <8 x float> %i.iee, <8 x float> %i.iei
  %i.iek = fadd reassoc nsz arcp contract afn <8 x float> %i.iej, %wide.masked.gather5097
  %i.iel = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.load5088, %i.ict
  %predphi5102 = select nsz <8 x i1> %i.ied, <8 x float> %i.iel, <8 x float> %i.iek
  %wide.gep5103.a = getelementptr inbounds [4 x i8], ptr %i.k, <8 x i64> %i.ibm
  %wide.masked.gather5104.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep5103.a, <8 x i1> %i.ibl, <8 x float> poison), !tbaa !322, !alias.scope !409 ; 2 uses
  %i.iem = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather5104.a, %predphi5100.a
  %wide.gep5105.a = getelementptr inbounds nuw [4 x i8], ptr %i.k, <8 x i64> %i.ibw
  %wide.masked.gather5106.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep5105.a, <8 x i1> %i.ibl, <8 x float> poison), !tbaa !322, !alias.scope !410 ; 2 uses
  %i.ien = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather5106.a, %predphi5099.a
  %i.ieo = fadd reassoc nsz arcp contract afn <8 x float> %i.ien, %i.iem
  %i.iep = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather5106.a, %wide.masked.gather5104.a
  %i.ieq = fdiv reassoc nsz arcp contract afn <8 x float> %i.ieo, %i.iep ; 12 uses
  %wide.gep5107.a = getelementptr inbounds [4 x i8], ptr %i.o, <8 x i64> %i.ice
  %wide.masked.gather5108.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep5107.a, <8 x i1> %i.ibl, <8 x float> poison), !tbaa !322, !alias.scope !411 ; 2 uses
  %i.ier = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather5108.a, %predphi5102
  %wide.gep5109 = getelementptr inbounds nuw [4 x i8], ptr %i.o, <8 x i64> %i.icm
  %wide.masked.gather5110 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep5109, <8 x i1> %i.ibl, <8 x float> poison), !tbaa !322, !alias.scope !412 ; 2 uses
  %i.ies = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather5110, %predphi5101
  %i.iet = fadd reassoc nsz arcp contract afn <8 x float> %i.ies, %i.ier
  %i.ieu = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather5110, %wide.masked.gather5108.a
  %i.iev = fdiv reassoc nsz arcp contract afn <8 x float> %i.iet, %i.ieu ; 12 uses
  %i.iew = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ieq, %wide.masked.load5088 ; 2 uses
  %i.iex = select <8 x i1> %i.ibl, <8 x i1> %i.iew, <8 x i1> zeroinitializer ; 2 uses
  %i.iey = fmul reassoc nsz arcp contract afn <8 x float> %i.ieq, splat (float 2.000000e+00)
  %i.iez = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.iey, %wide.masked.load5088 ; 2 uses
  %i.ifa = xor <8 x i1> %i.iez, splat (i1 true)
  %i.ifb = select <8 x i1> %i.iex, <8 x i1> %i.ifa, <8 x i1> zeroinitializer
  %i.ifc = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.load5088, %i.ieq
  %i.ifd = fpext reassoc nsz arcp contract afn <8 x float> %i.ifc to <8 x double>
  %i.ife = fmul reassoc nsz arcp contract afn <8 x double> %i.ifd, splat (double 2.000000e+00)
  %i.iff = fadd reassoc nsz arcp contract afn <8 x float> %i.ibq, %i.ieq
  %i.ifg = fpext reassoc nsz arcp contract afn <8 x float> %i.iff to <8 x double>
  %i.ifh = fdiv reassoc nsz arcp contract afn <8 x double> %i.ife, %i.ifg
  %i.ifi = fptrunc reassoc nsz arcp contract afn <8 x double> %i.ifh to <8 x float>
  %i.ifj = fcmp reassoc nsz arcp contract afn olt <8 x float> %wide.masked.gather, %wide.masked.gather5091 ; 4 uses
  %i.ifk = select <8 x i1> %i.ifj, <8 x float> %wide.masked.gather5091, <8 x float> %wide.masked.gather ; 2 uses
  %i.ifl = select <8 x i1> %i.ifj, <8 x float> %wide.masked.gather, <8 x float> %wide.masked.gather5091 ; 2 uses
  %i.ifm = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ieq, %i.ifk
  %i.ifn = select reassoc nsz arcp contract afn <8 x i1> %i.ifm, <8 x float> %i.ieq, <8 x float> %i.ifk ; 2 uses
  %i.ifo = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.ifl, %i.ifn
  %i.ifp = select reassoc nsz arcp contract afn <8 x i1> %i.ifo, <8 x float> %i.ifl, <8 x float> %i.ifn ; 2 uses
  %i.ifq = fsub reassoc nsz arcp contract afn <8 x float> %i.ieq, %i.ifp
  %i.ifr = fmul reassoc nsz arcp contract afn <8 x float> %i.ifq, %i.ifi
  %i.ifs = fadd reassoc nsz arcp contract afn <8 x float> %i.ifr, %i.ifp
  %i.ift = select <8 x i1> %i.iex, <8 x i1> %i.iez, <8 x i1> zeroinitializer
  %i.ifu = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ieq, %wide.masked.gather
  %i.ifv = select reassoc nsz arcp contract afn <8 x i1> %i.ifu, <8 x float> %i.ieq, <8 x float> %wide.masked.gather ; 2 uses
  %i.ifw = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.gather5091, %i.ifv
  %i.ifx = select nsz <8 x i1> %i.ifw, <8 x float> %wide.masked.gather5091, <8 x float> %i.ifv
  %i.ify = select <8 x i1> %i.ift, <8 x i1> %i.ifj, <8 x i1> zeroinitializer
  %i.ifz = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ieq, %wide.masked.gather5091
  %i.iga = select reassoc nsz arcp contract afn <8 x i1> %i.ifz, <8 x float> %i.ieq, <8 x float> %wide.masked.gather5091 ; 2 uses
  %i.igb = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.gather, %i.iga
  %i.igc = select nsz <8 x i1> %i.igb, <8 x float> %wide.masked.gather, <8 x float> %i.iga
  %i.igd = xor <8 x i1> %i.iew, splat (i1 true)
  %i.ige = select <8 x i1> %i.ibl, <8 x i1> %i.igd, <8 x i1> zeroinitializer
  %predphi5111.a = select nsz <8 x i1> %i.ify, <8 x float> %i.igc, <8 x float> %i.ifx
  %predphi5112.a = select nsz <8 x i1> %i.ifb, <8 x float> %i.ifs, <8 x float> %predphi5111.a
  %predphi5113.a = select nsz <8 x i1> %i.ige, <8 x float> %i.ieq, <8 x float> %predphi5112.a ; 6 uses
  %i.igf = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.iev, %wide.masked.load5088 ; 2 uses
  %i.igg = select <8 x i1> %i.ibl, <8 x i1> %i.igf, <8 x i1> zeroinitializer ; 2 uses
  %i.igh = fmul reassoc nsz arcp contract afn <8 x float> %i.iev, splat (float 2.000000e+00)
  %i.igi = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.igh, %wide.masked.load5088 ; 2 uses
  %i.igj = xor <8 x i1> %i.igi, splat (i1 true)
  %i.igk = select <8 x i1> %i.igg, <8 x i1> %i.igj, <8 x i1> zeroinitializer
  %i.igl = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.load5088, %i.iev
  %i.igm = fpext reassoc nsz arcp contract afn <8 x float> %i.igl to <8 x double>
  %i.ign = fmul reassoc nsz arcp contract afn <8 x double> %i.igm, splat (double 2.000000e+00)
  %i.igo = fadd reassoc nsz arcp contract afn <8 x float> %i.ibq, %i.iev
  %i.igp = fpext reassoc nsz arcp contract afn <8 x float> %i.igo to <8 x double>
  %i.igq = fdiv reassoc nsz arcp contract afn <8 x double> %i.ign, %i.igp
  %i.igr = fptrunc reassoc nsz arcp contract afn <8 x double> %i.igq to <8 x float>
  %i.igs = fcmp reassoc nsz arcp contract afn olt <8 x float> %wide.masked.gather5094, %wide.masked.gather5097 ; 4 uses
  %i.igt = select <8 x i1> %i.igs, <8 x float> %wide.masked.gather5097, <8 x float> %wide.masked.gather5094 ; 2 uses
  %i.igu = select <8 x i1> %i.igs, <8 x float> %wide.masked.gather5094, <8 x float> %wide.masked.gather5097 ; 2 uses
  %i.igv = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.iev, %i.igt
  %i.igw = select reassoc nsz arcp contract afn <8 x i1> %i.igv, <8 x float> %i.iev, <8 x float> %i.igt ; 2 uses
  %i.igx = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.igu, %i.igw
  %i.igy = select reassoc nsz arcp contract afn <8 x i1> %i.igx, <8 x float> %i.igu, <8 x float> %i.igw ; 2 uses
  %i.igz = fsub reassoc nsz arcp contract afn <8 x float> %i.iev, %i.igy
  %i.iha = fmul reassoc nsz arcp contract afn <8 x float> %i.igz, %i.igr
  %i.ihb = fadd reassoc nsz arcp contract afn <8 x float> %i.iha, %i.igy
  %i.ihc = select <8 x i1> %i.igg, <8 x i1> %i.igi, <8 x i1> zeroinitializer
  %i.ihd = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.iev, %wide.masked.gather5094
  %i.ihe = select reassoc nsz arcp contract afn <8 x i1> %i.ihd, <8 x float> %i.iev, <8 x float> %wide.masked.gather5094 ; 2 uses
  %i.ihf = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.gather5097, %i.ihe
  %i.ihg = select nsz <8 x i1> %i.ihf, <8 x float> %wide.masked.gather5097, <8 x float> %i.ihe
  %i.ihh = select <8 x i1> %i.ihc, <8 x i1> %i.igs, <8 x i1> zeroinitializer
  %i.ihi = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.iev, %wide.masked.gather5097
  %i.ihj = select reassoc nsz arcp contract afn <8 x i1> %i.ihi, <8 x float> %i.iev, <8 x float> %wide.masked.gather5097 ; 2 uses
  %i.ihk = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.gather5094, %i.ihj
  %i.ihl = select nsz <8 x i1> %i.ihk, <8 x float> %wide.masked.gather5094, <8 x float> %i.ihj
  %i.ihm = xor <8 x i1> %i.igf, splat (i1 true)
  %i.ihn = select <8 x i1> %i.ibl, <8 x i1> %i.ihm, <8 x i1> zeroinitializer
  %predphi5114.a = select nsz <8 x i1> %i.ihh, <8 x float> %i.ihl, <8 x float> %i.ihg
  %predphi5115.a = select nsz <8 x i1> %i.igk, <8 x float> %i.ihb, <8 x float> %predphi5114.a
  %predphi5116.a = select nsz <8 x i1> %i.ihn, <8 x float> %i.iev, <8 x float> %predphi5115.a ; 6 uses
  %i.iho = fcmp reassoc nsz arcp contract afn ogt <8 x float> %predphi5116.a, %broadcast.splat5079.a ; 2 uses
  %i.ihp = select <8 x i1> %i.ibl, <8 x i1> %i.iho, <8 x i1> zeroinitializer
  %i.ihq = fcmp reassoc nsz arcp contract afn olt <8 x float> %predphi5116.a, %wide.masked.gather5094
  %i.ihr = select reassoc nsz arcp contract afn <8 x i1> %i.ihq, <8 x float> %predphi5116.a, <8 x float> %wide.masked.gather5094 ; 2 uses
  %i.ihs = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.gather5097, %i.ihr
  %i.iht = select nsz <8 x i1> %i.ihs, <8 x float> %wide.masked.gather5097, <8 x float> %i.ihr
  %i.ihu = select <8 x i1> %i.ihp, <8 x i1> %i.igs, <8 x i1> zeroinitializer
  %i.ihv = fcmp reassoc nsz arcp contract afn olt <8 x float> %predphi5116.a, %wide.masked.gather5097
  %i.ihw = select reassoc nsz arcp contract afn <8 x i1> %i.ihv, <8 x float> %predphi5116.a, <8 x float> %wide.masked.gather5097 ; 2 uses
  %i.ihx = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.gather5094, %i.ihw
  %i.ihy = select nsz <8 x i1> %i.ihx, <8 x float> %wide.masked.gather5094, <8 x float> %i.ihw
  %i.ihz = xor <8 x i1> %i.iho, splat (i1 true)
  %i.iia = select <8 x i1> %i.ibl, <8 x i1> %i.ihz, <8 x i1> zeroinitializer
  %predphi5117.a = select nsz <8 x i1> %i.ihu, <8 x float> %i.ihy, <8 x float> %i.iht
  %predphi5118.a = select nsz <8 x i1> %i.iia, <8 x float> %predphi5116.a, <8 x float> %predphi5117.a ; 2 uses
  %i.iib = fcmp reassoc nsz arcp contract afn ogt <8 x float> %predphi5113.a, %broadcast.splat5079.a ; 2 uses
  %i.iic = select <8 x i1> %i.ibl, <8 x i1> %i.iib, <8 x i1> zeroinitializer
  %i.iid = fcmp reassoc nsz arcp contract afn olt <8 x float> %predphi5113.a, %wide.masked.gather
  %i.iie = select reassoc nsz arcp contract afn <8 x i1> %i.iid, <8 x float> %predphi5113.a, <8 x float> %wide.masked.gather ; 2 uses
  %i.iif = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.gather5091, %i.iie
  %i.iig = select nsz <8 x i1> %i.iif, <8 x float> %wide.masked.gather5091, <8 x float> %i.iie
  %i.iih = select <8 x i1> %i.iic, <8 x i1> %i.ifj, <8 x i1> zeroinitializer
  %i.iii = fcmp reassoc nsz arcp contract afn olt <8 x float> %predphi5113.a, %wide.masked.gather5091
  %i.iij = select reassoc nsz arcp contract afn <8 x i1> %i.iii, <8 x float> %predphi5113.a, <8 x float> %wide.masked.gather5091 ; 2 uses
  %i.iik = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.gather, %i.iij
  %i.iil = select nsz <8 x i1> %i.iik, <8 x float> %wide.masked.gather, <8 x float> %i.iij
  %i.iim = xor <8 x i1> %i.iib, splat (i1 true)
  %i.iin = select <8 x i1> %i.ibl, <8 x i1> %i.iim, <8 x i1> zeroinitializer
  %predphi5119 = select nsz <8 x i1> %i.iih, <8 x float> %i.iil, <8 x float> %i.iig
  %predphi5120 = select nsz <8 x i1> %i.iin, <8 x float> %predphi5113.a, <8 x float> %predphi5119
  %i.iio = getelementptr [4 x i8], ptr %i.u, i64 %i.ibc
  %wide.masked.load5121 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 8 %i.iio, <8 x i1> %i.ibl, <8 x float> poison), !tbaa !322, !alias.scope !413
  %i.iip = fsub reassoc nsz arcp contract afn <8 x float> %predphi5120, %predphi5118.a
  %i.iiq = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.load5121, %i.iip
  %i.iir = fadd reassoc nsz arcp contract afn <8 x float> %i.iiq, %predphi5118.a ; 2 uses
  %wide.gep5122 = getelementptr inbounds nuw [4 x i8], ptr %i.i, <8 x i64> %vec.ind5084
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.iir, <8 x ptr> align 4 %wide.gep5122, <8 x i1> %i.ibl), !tbaa !322, !alias.scope !414, !noalias !415
  %wide.gep5123 = getelementptr inbounds nuw [4 x i8], ptr %i.aa, <8 x i64> %vec.ind5084
  %wide.masked.gather5124 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep5123, <8 x i1> %i.ibl, <8 x float> poison), !tbaa !322, !alias.scope !416
  %i.iis = fsub reassoc nsz arcp contract afn <8 x float> %i.iir, %wide.masked.gather5124
  %i.iit = getelementptr [4 x i8], ptr %i.r, i64 %i.ibe
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.iis, ptr align 8 %i.iit, <8 x i1> %i.ibl), !tbaa !322, !alias.scope !417, !noalias !418
  %index.next5125 = add nuw i64 %index5083, 8     ; 2 uses
  %vec.ind.next5126 = add nuw nsw <8 x i64> %vec.ind5084, splat (i64 16)
  %i.iiu = icmp eq i64 %index.next5125, %n.vec5077
  br i1 %i.iiu, label %middle.block5127, label %vector.body5082, !llvm.loop !302

middle.block5127:                                 ; preds = %vector.body5082
  %cmp.n5128 = icmp eq i64 %n.vec5077, %i.hzx
  br i1 %cmp.n5128, label %._crit_edge4114, label %.lr.ph4113.preheader7464

.lr.ph4113.preheader7464:                         ; preds = %vector.memcheck4858, %vector.scevcheck, %.lr.ph4113.preheader, %middle.block5127
  %indvars.iv4355.ph = phi i64 [ %i.hzt, %vector.memcheck4858 ], [ %i.hzt, %vector.scevcheck ], [ %i.hzt, %.lr.ph4113.preheader ], [ %i.iaw, %middle.block5127 ]
  %indvars.iv4353.ph = phi i64 [ %i.hzs, %vector.memcheck4858 ], [ %i.hzs, %vector.scevcheck ], [ %i.hzs, %.lr.ph4113.preheader ], [ %i.iax, %middle.block5127 ]
  %.031624109.ph = phi i32 [ %i.hzo, %vector.memcheck4858 ], [ %i.hzo, %vector.scevcheck ], [ %i.hzo, %.lr.ph4113.preheader ], [ %i.iba, %middle.block5127 ]
  br label %.lr.ph4113

._crit_edge4114:                                  ; preds = %bb.eh, %middle.block5127, %bb.cz
  %i.iiv = add nuw nsw i32 %.031634115, 1         ; 2 uses
  %i.iiw = icmp slt i32 %i.iiv, %i.dd
  %indvars.iv.next4352 = add i32 %indvars.iv4351, 160
  %indvar.next4880 = add i32 %indvar4879, 1
  br i1 %i.iiw, label %bb.cz, label %.preheader3915, !llvm.loop !303

.lr.ph4113:                                       ; preds = %.lr.ph4113.preheader7464, %bb.eh
  %indvars.iv4355 = phi i64 [ %indvars.iv.next4356, %bb.eh ], [ %indvars.iv4355.ph, %.lr.ph4113.preheader7464 ] ; 9 uses
  %indvars.iv4353 = phi i64 [ %indvars.iv.next4354, %bb.eh ], [ %indvars.iv4353.ph, %.lr.ph4113.preheader7464 ] ; 3 uses
  %.031624109 = phi i32 [ %i.ipt, %bb.eh ], [ %.031624109.ph, %.lr.ph4113.preheader7464 ]
  %i.iix = lshr i64 %indvars.iv4355, 1
  %i.iiy = and i64 %i.iix, 2147483647             ; 3 uses
  %i.iiz = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.iiy
  %i.ija = load float, ptr %i.iiz, align 4, !tbaa !322
  %i.ijb = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.ija
  %i.ijc = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ijb)
  %i.ijd = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.iiy
  %i.ije = load float, ptr %i.ijd, align 4, !tbaa !322
  %i.ijf = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.ije
  %i.ijg = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ijf)
  %i.ijh = fcmp reassoc nsz arcp contract afn olt float %i.ijc, %i.ijg
  br i1 %i.ijh, label %bb.eh, label %bb.da

bb.da:                                            ; preds = %.lr.ph4113
  %i.iji = insertelement <4 x i64> poison, i64 %indvars.iv4355, i64 0
  %i.ijj = shufflevector <4 x i64> %i.iji, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ijk = add nsw <4 x i64> %i.ijj, <i64 -160, i64 160, i64 -1, i64 1>
  %i.ijl = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv4353 ; 2 uses
  %i.ijm = load float, ptr %i.ijl, align 4, !tbaa !322 ; 15 uses
  %i.ijn = fadd reassoc nsz arcp contract afn float %i.ijm, f0x3727C5AC ; 3 uses
  %i.ijo = getelementptr inbounds [4 x i8], ptr %i.aa, <4 x i64> %i.ijk
  %i.ijp = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.ijo, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !322 ; 17 uses
  %i.ijq = fpext <4 x float> %i.ijp to <4 x double>
  %i.ijr = fmul reassoc nsz arcp contract afn <4 x double> %i.ijq, splat (double 2.000000e+00)
  %i.ijs = getelementptr i8, ptr %i.ijl, <4 x i64> <i64 -640, i64 640, i64 -4, i64 4>
  %i.ijt = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.ijs, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !322 ; 5 uses
  %i.iju = insertelement <4 x float> poison, float %i.ijn, i64 0
  %i.ijv = shufflevector <4 x float> %i.iju, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ijw = fadd reassoc nsz arcp contract afn <4 x float> %i.ijv, %i.ijt
  %i.ijx = fpext <4 x float> %i.ijw to <4 x double>
  %i.ijy = fdiv reassoc nsz arcp contract afn <4 x double> %i.ijr, %i.ijx ; 4 uses
  %i.ijz = extractelement <4 x double> %i.ijy, i64 0
  %i.ika = fptrunc reassoc nsz arcp contract afn double %i.ijz to float ; 2 uses
  %i.ikb = extractelement <4 x double> %i.ijy, i64 1
  %i.ikc = fptrunc reassoc nsz arcp contract afn double %i.ikb to float ; 2 uses
  %i.ikd = extractelement <4 x double> %i.ijy, i64 2
  %i.ike = fptrunc reassoc nsz arcp contract afn double %i.ikd to float ; 2 uses
  %i.ikf = extractelement <4 x double> %i.ijy, i64 3
  %i.ikg = fptrunc reassoc nsz arcp contract afn double %i.ikf to float ; 2 uses
  %i.ikh = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ika
  %i.iki = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ikh)
  %i.ikj = fcmp reassoc nsz arcp contract afn olt float %i.iki, 7.500000e-01
  br i1 %i.ikj, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.ikk = fmul reassoc nsz arcp contract afn float %i.ijm, %i.ika
  br label %bb.dd

bb.dc:                                            ; preds = %bb.da
  %i.ikl = extractelement <4 x float> %i.ijt, i64 0
  %i.ikm = fsub reassoc nsz arcp contract afn float %i.ijm, %i.ikl ; 3 uses
  %.not.i3682 = fcmp oeq float %i.ikm, 0.000000e+00
  %i.ikn = bitcast float %i.ikm to i32
  %i.iko = add i32 %i.ikn, -8388608
  %i.ikp = bitcast i32 %i.iko to float
  %.sroa.0.0.i3683 = select nsz i1 %.not.i3682, float %i.ikm, float %i.ikp
  %i.ikq = extractelement <4 x float> %i.ijp, i64 0
  %i.ikr = fadd reassoc nsz arcp contract afn float %.sroa.0.0.i3683, %i.ikq
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.03159 = phi nsz float [ %i.ikk, %bb.db ], [ %i.ikr, %bb.dc ]
  %i.iks = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ikc
  %i.ikt = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.iks)
  %i.iku = fcmp reassoc nsz arcp contract afn olt float %i.ikt, 7.500000e-01
  br i1 %i.iku, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.ikv = fmul reassoc nsz arcp contract afn float %i.ijm, %i.ikc
  br label %bb.dg

bb.df:                                            ; preds = %bb.dd
  %i.ikw = extractelement <4 x float> %i.ijt, i64 1
  %i.ikx = fsub reassoc nsz arcp contract afn float %i.ijm, %i.ikw ; 3 uses
  %.not.i3684 = fcmp oeq float %i.ikx, 0.000000e+00
  %i.iky = bitcast float %i.ikx to i32
  %i.ikz = add i32 %i.iky, -8388608
  %i.ila = bitcast i32 %i.ikz to float
  %.sroa.0.0.i3685 = select nsz i1 %.not.i3684, float %i.ikx, float %i.ila
  %i.ilb = extractelement <4 x float> %i.ijp, i64 1
  %i.ilc = fadd reassoc nsz arcp contract afn float %.sroa.0.0.i3685, %i.ilb
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.03158 = phi nsz float [ %i.ikv, %bb.de ], [ %i.ilc, %bb.df ]
  %i.ild = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ike
  %i.ile = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ild)
  %i.ilf = fcmp reassoc nsz arcp contract afn olt float %i.ile, 7.500000e-01
  br i1 %i.ilf, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.ilg = fmul reassoc nsz arcp contract afn float %i.ijm, %i.ike
  br label %bb.dj

bb.di:                                            ; preds = %bb.dg
  %i.ilh = extractelement <4 x float> %i.ijt, i64 2
  %i.ili = fsub reassoc nsz arcp contract afn float %i.ijm, %i.ilh ; 3 uses
  %.not.i3686 = fcmp oeq float %i.ili, 0.000000e+00
  %i.ilj = bitcast float %i.ili to i32
  %i.ilk = add i32 %i.ilj, -8388608
  %i.ill = bitcast i32 %i.ilk to float
  %.sroa.0.0.i3687 = select nsz i1 %.not.i3686, float %i.ili, float %i.ill
  %i.ilm = extractelement <4 x float> %i.ijp, i64 2
  %i.iln = fadd reassoc nsz arcp contract afn float %.sroa.0.0.i3687, %i.ilm
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.03157 = phi nsz float [ %i.ilg, %bb.dh ], [ %i.iln, %bb.di ]
  %i.ilo = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ikg
  %i.ilp = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ilo)
  %i.ilq = fcmp reassoc nsz arcp contract afn olt float %i.ilp, 7.500000e-01
  br i1 %i.ilq, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.ilr = fmul reassoc nsz arcp contract afn float %i.ijm, %i.ikg
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dj
  %i.ils = extractelement <4 x float> %i.ijt, i64 3
  %i.ilt = fsub reassoc nsz arcp contract afn float %i.ijm, %i.ils ; 3 uses
  %.not.i3688 = fcmp oeq float %i.ilt, 0.000000e+00
  %i.ilu = bitcast float %i.ilt to i32
  %i.ilv = add i32 %i.ilu, -8388608
  %i.ilw = bitcast i32 %i.ilv to float
  %.sroa.0.0.i3689 = select nsz i1 %.not.i3688, float %i.ilt, float %i.ilw
  %i.ilx = extractelement <4 x float> %i.ijp, i64 3
  %i.ily = fadd reassoc nsz arcp contract afn float %.sroa.0.0.i3689, %i.ilx
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.03156 = phi nsz float [ %i.ilr, %bb.dk ], [ %i.ily, %bb.dl ]
  %i.ilz = getelementptr [4 x i8], ptr %i.k, i64 %indvars.iv4355
  %i.ima = getelementptr i8, ptr %i.ilz, i64 -640
  %i.imb = load float, ptr %i.ima, align 4, !tbaa !322 ; 2 uses
  %i.imc = fmul reassoc nsz arcp contract afn float %i.imb, %.03158
  %i.imd = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv4355
  %i.ime = getelementptr inbounds nuw i8, ptr %i.imd, i64 640
  %i.imf = load float, ptr %i.ime, align 4, !tbaa !322 ; 2 uses
  %i.img = fmul reassoc nsz arcp contract afn float %i.imf, %.03159
  %i.imh = fadd reassoc nsz arcp contract afn float %i.img, %i.imc
  %i.imi = fadd reassoc nsz arcp contract afn float %i.imf, %i.imb
  %i.imj = fdiv reassoc nsz arcp contract afn float %i.imh, %i.imi ; 12 uses
  %i.imk = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv4355
  %i.iml = getelementptr i8, ptr %i.imk, i64 -4
  %i.imm = load float, ptr %i.iml, align 4, !tbaa !322 ; 2 uses
  %i.imn = fmul reassoc nsz arcp contract afn float %i.imm, %.03156
  %i.imo = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv4355
  %i.imp = getelementptr inbounds nuw i8, ptr %i.imo, i64 4
  %i.imq = load float, ptr %i.imp, align 4, !tbaa !322 ; 2 uses
  %i.imr = fmul reassoc nsz arcp contract afn float %i.imq, %.03157
  %i.ims = fadd reassoc nsz arcp contract afn float %i.imr, %i.imn
  %i.imt = fadd reassoc nsz arcp contract afn float %i.imq, %i.imm
  %i.imu = fdiv reassoc nsz arcp contract afn float %i.ims, %i.imt ; 12 uses
  %i.imv = fcmp reassoc nsz arcp contract afn olt float %i.imj, %i.ijm
  br i1 %i.imv, label %bb.dn, label %bb.ds

bb.dn:                                            ; preds = %bb.dm
  %i.imw = fmul reassoc nsz arcp contract afn float %i.imj, 2.000000e+00
  %i.imx = fcmp reassoc nsz arcp contract afn olt float %i.imw, %i.ijm
  br i1 %i.imx, label %bb.do, label %bb.dr

bb.do:                                            ; preds = %bb.dn
  %i.imy = extractelement <4 x float> %i.ijp, i64 0 ; 5 uses
  %i.imz = extractelement <4 x float> %i.ijp, i64 1 ; 5 uses
  %i.ina = fcmp reassoc nsz arcp contract afn olt float %i.imy, %i.imz
  br i1 %i.ina, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.inb = fcmp reassoc nsz arcp contract afn olt float %i.imj, %i.imz
  %.3590 = select reassoc nsz arcp contract afn i1 %i.inb, float %i.imj, float %i.imz ; 2 uses
  %i.inc = fcmp reassoc nsz arcp contract afn ogt float %i.imy, %.3590
  %spec.select3826 = select nsz i1 %i.inc, float %i.imy, float %.3590
  br label %bb.ds

bb.dq:                                            ; preds = %bb.do
  %i.ind = fcmp reassoc nsz arcp contract afn olt float %i.imj, %i.imy
  %.3592 = select reassoc nsz arcp contract afn i1 %i.ind, float %i.imj, float %i.imy ; 2 uses
  %i.ine = fcmp reassoc nsz arcp contract afn ogt float %i.imz, %.3592
  %spec.select3827 = select nsz i1 %i.ine, float %i.imz, float %.3592
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dn
  %i.inf = fsub reassoc nsz arcp contract afn float %i.ijm, %i.imj
  %i.ing = fpext reassoc nsz arcp contract afn float %i.inf to double
  %i.inh = fmul reassoc nsz arcp contract afn double %i.ing, 2.000000e+00
  %i.ini = fadd reassoc nsz arcp contract afn float %i.ijn, %i.imj
  %i.inj = fpext reassoc nsz arcp contract afn float %i.ini to double
  %i.ink = fdiv reassoc nsz arcp contract afn double %i.inh, %i.inj
  %i.inl = fptrunc reassoc nsz arcp contract afn double %i.ink to float
  %i.inm = extractelement <4 x float> %i.ijp, i64 0 ; 3 uses
  %i.inn = extractelement <4 x float> %i.ijp, i64 1 ; 3 uses
  %i.ino = fcmp reassoc nsz arcp contract afn olt float %i.inm, %i.inn ; 2 uses
  %.4823 = select i1 %i.ino, float %i.inn, float %i.inm ; 2 uses
  %.4824 = select i1 %i.ino, float %i.inm, float %i.inn ; 2 uses
end_hunk_1

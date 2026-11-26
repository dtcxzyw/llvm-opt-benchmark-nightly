Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 140
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 157
begin_hunk_0_@process:bb.a
  %.reass.3.2.i535 = mul i16 %i.irl, -122
  %i.irm = getelementptr inbounds nuw i8, ptr %i.ino, i64 6
  store i16 %.reass.3.2.i535, ptr %i.irm, align 2, !tbaa !476
  %i.irn = getelementptr inbounds nuw i8, ptr %i.ino, i64 8
  store i16 -123, ptr %i.irn, align 8, !tbaa !476
  %i.iro = getelementptr inbounds nuw i8, ptr %i.iob, i64 20
  %i.irp = getelementptr inbounds nuw i8, ptr %i.ino, i64 10
  %i.irq = load <4 x i16>, ptr %i.iro, align 4, !tbaa !476 ; 2 uses
  %i.irr = shufflevector <4 x i16> %i.irq, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.irs = mul <2 x i16> %i.irr, splat (i16 -122)
  %i.irt = shufflevector <4 x i16> %i.irq, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %i.iru = sub <2 x i16> %i.irs, %i.irt
  store <2 x i16> %i.iru, ptr %i.irp, align 2, !tbaa !476
  %i.irv = getelementptr inbounds nuw i8, ptr %i.iob, i64 28
  %i.irw = load i16, ptr %i.irv, align 4, !tbaa !476
  %.reass.7.2.i539 = mul i16 %i.irw, -122
  %i.irx = getelementptr inbounds nuw i8, ptr %i.iob, i64 30
  %i.iry = load i16, ptr %i.irx, align 2, !tbaa !476
  %i.irz = sub i16 %.reass.7.2.i539, %i.iry
  %i.isa = getelementptr inbounds nuw i8, ptr %i.ino, i64 14
  store i16 %i.irz, ptr %i.isa, align 2, !tbaa !476
  br label %.loopexit1063.2.i

.loopexit1063.2.i:                                ; preds = %.preheader1062.2.i, %.loopexit1063.1.i
  %i.isb = add nuw nsw i32 %i.inm, 601
  %.urem1319.i = urem i32 %i.isb, 6
  %i.isc = zext nneg i32 %.urem1319.i to i64
  %i.isd = getelementptr inbounds nuw i8, ptr %i.fpf, i64 %i.isc
  %i.ise = load i8, ptr %i.isd, align 1, !tbaa !133
  %i.isf = icmp eq i8 %i.ise, 1
  %i.isg = add nuw nsw i32 %.1918.2.i, 1
  %.1918.3.i = select i1 %i.isf, i32 0, i32 %i.isg ; 3 uses
  %i.ish = icmp eq i32 %.1918.3.i, 4
  %i.isi = icmp eq i32 %.1918.3.i, %i.inz
  br i1 %i.isi, label %.preheader1062.3.i, label %.loopexit1063.3.i

.preheader1062.3.i:                               ; preds = %.loopexit1063.2.i
  %i.isj = and i32 %i.inz, 2                      ; 5 uses
  %i.isk = zext nneg i32 %i.isj to i64
  %i.isl = getelementptr inbounds nuw [2 x i8], ptr %i.ino, i64 %i.isk ; 2 uses
  store i16 -122, ptr %i.isl, align 4, !tbaa !476
  %i.ism = getelementptr inbounds nuw i8, ptr %i.iob, i64 6
  %i.isn = load i16, ptr %i.ism, align 2, !tbaa !476
  %.reass1069.1.3.i = mul i16 %i.isn, -122
  %i.iso = or i32 %i.inz, 1
  %i.isp = zext nneg i32 %i.iso to i64
  %i.isq = getelementptr inbounds nuw [2 x i8], ptr %i.ino, i64 %i.isp
  store i16 %.reass1069.1.3.i, ptr %i.isq, align 2, !tbaa !476
  %i.isr = getelementptr inbounds nuw i8, ptr %i.iob, i64 8
  %i.iss = load i16, ptr %i.isr, align 8, !tbaa !476
  %i.ist = xor i32 %i.isj, 2
  %i.isu = zext nneg i32 %i.ist to i64
  %i.isv = getelementptr inbounds nuw [2 x i8], ptr %i.ino, i64 %i.isu
  store i16 %i.iss, ptr %i.isv, align 4, !tbaa !476
  %i.isw = getelementptr inbounds nuw i8, ptr %i.iob, i64 12
  %i.isx = load i16, ptr %i.isw, align 4, !tbaa !476
  %i.isy = xor i32 %i.isj, 3
  %i.isz = zext nneg i32 %i.isy to i64
  %i.ita = getelementptr inbounds nuw [2 x i8], ptr %i.ino, i64 %i.isz
  store i16 %i.isx, ptr %i.ita, align 2, !tbaa !476
  %i.itb = getelementptr inbounds nuw i8, ptr %i.isl, i64 8
  store i16 -121, ptr %i.itb, align 4, !tbaa !476
  %i.itc = getelementptr inbounds nuw i8, ptr %i.iob, i64 20
  %i.itd = load i16, ptr %i.itc, align 4, !tbaa !476
  %i.ite = getelementptr inbounds nuw i8, ptr %i.iob, i64 22
  %i.itf = load i16, ptr %i.ite, align 2, !tbaa !476
  %.reass1069.5.3.i = mul i16 %i.itf, -122
  %i.itg = add i16 %.reass1069.5.3.i, %i.itd
  %i.ith = or i32 %i.inz, 5
  %i.iti = zext nneg i32 %i.ith to i64
  %i.itj = getelementptr inbounds nuw [2 x i8], ptr %i.ino, i64 %i.iti
  store i16 %i.itg, ptr %i.itj, align 2, !tbaa !476
  %i.itk = getelementptr inbounds nuw i8, ptr %i.iob, i64 24
  %i.itl = xor i32 %i.isj, 6
  %i.itm = zext nneg i32 %i.itl to i64
  %i.itn = getelementptr inbounds nuw [2 x i8], ptr %i.ino, i64 %i.itm
  %i.ito = load <4 x i16>, ptr %i.itk, align 8, !tbaa !476 ; 2 uses
  %i.itp = shufflevector <4 x i16> %i.ito, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %i.itq = mul <2 x i16> %i.itp, splat (i16 -122)
  %i.itr = shufflevector <4 x i16> %i.ito, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.its = add <2 x i16> %i.itq, %i.itr           ; 2 uses
  %i.itt = extractelement <2 x i16> %i.its, i64 0
  store i16 %i.itt, ptr %i.itn, align 4, !tbaa !476
  %i.itu = xor i32 %i.isj, 7
  %i.itv = zext nneg i32 %i.itu to i64
  %i.itw = getelementptr inbounds nuw [2 x i8], ptr %i.ino, i64 %i.itv
  %i.itx = extractelement <2 x i16> %i.its, i64 1
  store i16 %i.itx, ptr %i.itw, align 2, !tbaa !476
  br label %.loopexit1063.3.i

.loopexit1063.3.i:                                ; preds = %.preheader1062.3.i, %.loopexit1063.2.i
  %i.ity = add nuw nsw i32 %.1918.3.i, 1
  %.1918.4.i = select i1 %i.iog, i32 0, i32 %i.ity ; 2 uses
  %i.itz = icmp eq i32 %.1918.4.i, 4
  %i.iua = or i1 %i.ish, %i.itz                   ; 2 uses
  %.3851.4.i = select i1 %i.iua, i16 %i.inn, i16 %.18491076.i ; 4 uses
  %.3.4.i = select i1 %i.iua, i16 %i.fop, i16 %.18451077.i ; 4 uses
  %i.iub = icmp eq i32 %.1918.4.i, %i.inz
  br i1 %i.iub, label %.preheader1062.4.i, label %.loopexit1063.4.i

.preheader1062.4.i:                               ; preds = %.loopexit1063.3.i
  store i16 1, ptr %i.ino, align 16, !tbaa !476
  %i.iuc = getelementptr inbounds nuw i8, ptr %i.iob, i64 6
  %i.iud = load i16, ptr %i.iuc, align 2, !tbaa !476
  %i.iue = getelementptr inbounds nuw i8, ptr %i.ino, i64 2
  store i16 %i.iud, ptr %i.iue, align 2, !tbaa !476
  %i.iuf = getelementptr inbounds nuw i8, ptr %i.iob, i64 8
  %i.iug = getelementptr inbounds nuw i8, ptr %i.ino, i64 4
  %i.iuh = call <3 x i16> @llvm.masked.load.v3i16.p0(ptr nonnull align 8 %i.iuf, <3 x i1> <i1 true, i1 false, i1 true>, <3 x i16> poison), !tbaa !476
  %i.iui = shufflevector <3 x i16> %i.iuh, <3 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.iuj = mul <2 x i16> %i.iui, splat (i16 122)
  store <2 x i16> %i.iuj, ptr %i.iug, align 4, !tbaa !476
  %i.iuk = getelementptr inbounds nuw i8, ptr %i.ino, i64 8
  store i16 123, ptr %i.iuk, align 8, !tbaa !476
  %i.iul = getelementptr inbounds nuw i8, ptr %i.iob, i64 20
  %i.ium = getelementptr inbounds nuw i8, ptr %i.ino, i64 10
  %i.iun = load <4 x i16>, ptr %i.iul, align 4, !tbaa !476 ; 2 uses
  %i.iuo = shufflevector <4 x i16> %i.iun, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.iup = mul <2 x i16> %i.iuo, splat (i16 122)
  %i.iuq = shufflevector <4 x i16> %i.iun, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %i.iur = add <2 x i16> %i.iuq, %i.iup
  store <2 x i16> %i.iur, ptr %i.ium, align 2, !tbaa !476
  %i.ius = getelementptr inbounds nuw i8, ptr %i.iob, i64 28
  %i.iut = load i16, ptr %i.ius, align 4, !tbaa !476
  %.reass.7.4.i532 = mul i16 %i.iut, 122
  %i.iuu = getelementptr inbounds nuw i8, ptr %i.iob, i64 30
  %i.iuv = load i16, ptr %i.iuu, align 2, !tbaa !476
  %i.iuw = add i16 %i.iuv, %.reass.7.4.i532
  %i.iux = getelementptr inbounds nuw i8, ptr %i.ino, i64 14
  store i16 %i.iuw, ptr %i.iux, align 2, !tbaa !476
  br label %.loopexit1063.4.i

.loopexit1063.4.i:                                ; preds = %.preheader1062.4.i, %.loopexit1063.3.i
  %indvars.iv.next.i509 = add nuw nsw i64 %indvars.iv.i499, 1 ; 2 uses
  %exitcond.not.i510 = icmp eq i64 %indvars.iv.next.i509, 3
  br i1 %exitcond.not.i510, label %bb.np, label %.preheader1064.i

._crit_edge1251.i:                                ; preds = %.lr.ph1250.split.i, %._crit_edge1247.us.i, %bb.ll
  tail call void @free(ptr noundef %i.fom) #27
  tail call fastcc void @_vng_lininterpolate(ptr noundef nonnull %i.anx, ptr noundef readonly %i.axc, i32 noundef %i.bo, i32 noundef %i.aws, i32 noundef 9, ptr noundef nonnull readonly %i.x, i32 noundef %i.api)
  br label %xtrans_markesteijn_interpolate.exit

.lr.ph1250.split.i:                               ; preds = %.lr.ph1250.i, %.lr.ph1250.split.i
  %.09141248.i = phi i32 [ %i.iuy, %.lr.ph1250.split.i ], [ %.neg.i511, %.lr.ph1250.i ]
  %i.iuy = add i32 %.09141248.i, %reass.sub955.i  ; 2 uses
  %i.iuz = icmp slt i32 %i.iuy, %i.fpj
  br i1 %i.iuz, label %.lr.ph1250.split.i, label %._crit_edge1251.i

xtrans_markesteijn_interpolate.exit:              ; preds = %bb.lk, %._crit_edge1251.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %demosaic_box3.exit

bb.nq:                                            ; preds = %bb.li
  tail call fastcc void @vng_interpolate(ptr noundef %i.anx, ptr noundef %i.axc, i32 noundef %i.bo, i32 noundef %i.aws, i32 noundef 9, ptr noundef nonnull %i.x, i32 noundef 0)
  br label %demosaic_box3.exit

bb.nr:                                            ; preds = %bb.hz
  br i1 %or.cond31, label %bb.ns, label %bb.nu

bb.ns:                                            ; preds = %bb.nr
  tail call fastcc void @vng_interpolate(ptr noundef %i.anx, ptr noundef %i.axc, i32 noundef %i.bo, i32 noundef %i.aws, i32 noundef %.fr1070, ptr noundef nonnull %i.x, i32 noundef 0)
  br i1 %i.bg, label %bb.nt, label %demosaic_box3.exit

bb.nt:                                            ; preds = %bb.ns
  %i.iva = mul nsw i32 %i.aws, %i.bo
  tail call void @dt_colorspaces_cygm_to_rgb(ptr noundef nonnull %i.anx, i32 noundef %i.iva, ptr noundef nonnull %i.aoz) #27
  tail call void @dt_colorspaces_cygm_to_rgb(ptr noundef nonnull %i.apa, i32 noundef 1, ptr noundef nonnull %i.aoz) #27
  br label %demosaic_box3.exit

bb.nu:                                            ; preds = %bb.nr
  switch i32 %.0394, label %bb.px [
    i32 5, label %bb.nv
    i32 6, label %bb.oe
    i32 1, label %bb.py
  ]

bb.nv:                                            ; preds = %bb.nu
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  tail call fastcc void @demosaic_ppg(ptr noundef nonnull %i.anx, ptr noundef %i.axc, i32 noundef %i.bo, i32 noundef %i.aws, i32 noundef range(i32 10, 9) %.fr1070, float noundef 0.000000e+00, i32 noundef 10)
  %i.ivb = icmp slt i32 %i.aws, 20
  %or.cond.i540 = or i1 %i.aor, %i.ivb
  br i1 %or.cond.i540, label %demosaic_box3.exit, label %bb.nw

bb.nw:                                            ; preds = %bb.nv
  %i.ivc = add nsw i32 %i.aws, -21
  %i.ivd = sdiv i32 %i.ivc, 92
  %i.ive = tail call ptr @dt_alloc_aligned(i64 noundef 50176) #27, !noalias !494 ; 17 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ive, i64 64) ]
  %.not.i.i541 = icmp eq ptr %i.ive, null
  br i1 %.not.i.i541, label %.preheader833.preheader.i, label %bb.nx

bb.nx:                                            ; preds = %bb.nw
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(50176) %i.ive, i8 0, i64 50176, i1 false), !noalias !494
  br label %.preheader833.preheader.i

.preheader833.preheader.i:                        ; preds = %bb.nx, %bb.nw
  %i.ivf = tail call ptr @dt_alloc_aligned(i64 noundef 25088) #27, !noalias !494 ; 28 uses
  %i.ivg = ptrtoaddr ptr %i.ivf to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ivf, i64 64) ]
  %i.ivh = tail call ptr @dt_alloc_aligned(i64 noundef 50176) #27, !noalias !494 ; 36 uses
  %i.ivi = ptrtoaddr ptr %i.ivh to i64            ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ivh, i64 64) ]
  %i.ivj = tail call ptr @dt_alloc_aligned(i64 noundef 25088) #27, !noalias !494 ; 13 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ivj, i64 64) ]
  %i.ivk = tail call ptr @dt_alloc_aligned(i64 noundef 25088) #27, !noalias !494 ; 13 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ivk, i64 64) ]
  %i.ivl = tail call ptr @dt_alloc_aligned(i64 noundef 150528) #27, !noalias !494 ; 58 uses
  %i.ivm = ptrtoaddr ptr %i.ivl to i64            ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ivl, i64 64) ]
  %i.ivn = getelementptr i8, ptr %i.ivl, i64 50176 ; 26 uses
  %i.ivo = getelementptr i8, ptr %i.ivl, i64 100352 ; 13 uses
  %scevgep3260 = getelementptr i8, ptr %i.ive, i64 456
  %scevgep3261 = getelementptr i8, ptr %i.ive, i64 -452
  %scevgep3264 = getelementptr i8, ptr %i.ivl, i64 101700
  %scevgep3265 = getelementptr i8, ptr %i.ivl, i64 -1344
  %scevgep3511 = getelementptr i8, ptr %i.ivl, i64 50632
  %scevgep3512 = getelementptr i8, ptr %i.ivl, i64 50628
  %scevgep3513 = getelementptr i8, ptr %i.ivl, i64 50624
  %scevgep3514 = getelementptr i8, ptr %i.ivl, i64 50620
  %scevgep3515 = getelementptr i8, ptr %i.ivl, i64 49736
  %scevgep3516 = getelementptr i8, ptr %i.ivl, i64 49732
  %scevgep3517 = getelementptr i8, ptr %i.ivl, i64 49728
  %scevgep3518 = getelementptr i8, ptr %i.ivl, i64 49724
  %scevgep3519 = getelementptr i8, ptr %i.ivl, i64 51084
  %scevgep3520 = getelementptr i8, ptr %i.ivl, i64 51080
  %scevgep3521 = getelementptr i8, ptr %i.ivl, i64 101712
  %scevgep3522 = getelementptr i8, ptr %i.ivl, i64 101708
  %scevgep3523 = getelementptr i8, ptr %i.ivl, i64 51068
  %scevgep3524 = getelementptr i8, ptr %i.ivl, i64 51064
  %scevgep3525 = getelementptr i8, ptr %i.ivl, i64 101688
  %scevgep3526 = getelementptr i8, ptr %i.ivl, i64 101684
  %scevgep3527 = getelementptr i8, ptr %i.ivl, i64 49292
  %scevgep3528 = getelementptr i8, ptr %i.ivl, i64 49288
  %scevgep3529 = getelementptr i8, ptr %i.ivl, i64 99024
  %scevgep3530 = getelementptr i8, ptr %i.ivl, i64 99020
  %scevgep3531 = getelementptr i8, ptr %i.ivl, i64 100800
  %scevgep3532 = getelementptr i8, ptr %i.ivl, i64 100796
  %scevgep3533 = getelementptr i8, ptr %i.ivl, i64 99912
  %scevgep3534 = getelementptr i8, ptr %i.ivl, i64 99908
  %scevgep3535 = getelementptr i8, ptr %i.ivl, i64 49276
  %scevgep3536 = getelementptr i8, ptr %i.ivl, i64 49272
  %scevgep3537 = getelementptr i8, ptr %i.ivl, i64 50180
  %scevgep3538 = getelementptr i8, ptr %i.ivl, i64 99000
  %scevgep3539 = getelementptr i8, ptr %i.ivl, i64 98996
  %scevgep3540 = getelementptr i8, ptr %i.ivl, i64 100808
  %scevgep3541 = getelementptr i8, ptr %i.ivl, i64 100804
  %scevgep3542 = getelementptr i8, ptr %i.ivl, i64 99904
  %scevgep3543 = getelementptr i8, ptr %i.ivl, i64 99900
  %scevgep3544 = getelementptr i8, ptr %i.ivf, i64 12
  %scevgep3545 = getelementptr i8, ptr %i.ivf, i64 8 ; 3 uses
  %scevgep3548 = getelementptr i8, ptr %i.ivl, i64 100356
  %i.ivp = insertelement <2 x ptr> poison, ptr %i.ivj, i64 0
  %i.ivq = insertelement <2 x ptr> %i.ivp, ptr %i.ivk, i64 1
  %i.ivr = shufflevector <2 x ptr> %i.ivq, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ivs = ptrtoaddr <4 x ptr> %i.ivr to <4 x i64>
  %i.ivt = insertelement <4 x i64> poison, i64 %i.ivg, i64 0
  %i.ivu = shufflevector <4 x i64> %i.ivt, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ivv = or disjoint <4 x i64> %i.ivu, <i64 4, i64 8, i64 8, i64 4>
  %i.ivw = sub <4 x i64> %i.ivv, %i.ivs
  %scevgep3735 = getelementptr i8, ptr %i.ivh, i64 -1344
  %scevgep3740 = getelementptr i8, ptr %i.ivh, i64 -440
  %scevgep3742 = getelementptr i8, ptr %i.ivh, i64 -892
  %scevgep3744 = getelementptr i8, ptr %i.ivh, i64 12
  %scevgep3746 = getelementptr i8, ptr %i.ivh, i64 -1320
  %scevgep3748 = getelementptr i8, ptr %i.ivh, i64 -432
  %scevgep3750 = getelementptr i8, ptr %i.ivh, i64 -876
  %scevgep3772 = getelementptr i8, ptr %i.ivh, i64 1364
  %scevgep3773 = getelementptr i8, ptr %i.ivh, i64 -1344
  %scevgep3855 = getelementptr i8, ptr %i.ive, i64 456
  %scevgep3856 = getelementptr i8, ptr %i.ive, i64 -452
  %scevgep3857 = getelementptr i8, ptr %i.ivf, i64 452
  %scevgep3858 = getelementptr i8, ptr %i.ivf, i64 -448
  %scevgep3859 = getelementptr i8, ptr %i.ivh, i64 1796
  %scevgep3860 = getelementptr i8, ptr %i.ivh, i64 -1792
  %scevgep3863 = getelementptr i8, ptr %i.ivl, i64 50180
  %scevgep3949 = getelementptr i8, ptr %i.ivh, i64 456
  %scevgep3950 = getelementptr i8, ptr %i.ivh, i64 -452
  %scevgep3953 = getelementptr i8, ptr %i.ivf, i64 4
  %scevgep4019 = getelementptr i8, ptr %i.ive, i64 16
  %scevgep4066 = getelementptr i8, ptr %i.ivh, i64 1344
  %scevgep4070 = getelementptr i8, ptr %i.ivh, i64 -1328
  %i.ivx = sub i64 %i.ivi, %i.ivm                 ; 2 uses
  %invariant.op5386 = add <4 x i64> %i.ivw, splat (i64 -1)
  br label %.preheader833.i

.preheader833.i:                                  ; preds = %._crit_edge939.i, %.preheader833.preheader.i
  %indvars.iv1056.i = phi i32 [ 0, %.preheader833.preheader.i ], [ %indvars.iv.next1057.i, %._crit_edge939.i ] ; 2 uses
  %indvars.iv947.i = phi i32 [ 0, %.preheader833.preheader.i ], [ %indvars.iv.next948.i, %._crit_edge939.i ] ; 2 uses
  %.0740941.i = phi i32 [ 0, %.preheader833.preheader.i ], [ %i.iwv, %._crit_edge939.i ] ; 4 uses
  %i.ivy = mul nuw nsw i32 %.0740941.i, 92        ; 5 uses
  %i.ivz = add nuw nsw i32 %i.ivy, 112            ; 2 uses
  %i.iwa = tail call i32 @llvm.smin.i32(i32 %i.ivz, i32 %i.aws) ; 3 uses
  %i.iwb = sub nsw i32 %i.iwa, %i.ivy             ; 6 uses
  %i.iwc = icmp sgt i32 %i.ivz, %i.aws
  %i.iwd = icmp sgt i32 %i.aws, %i.ivy
  %i.iwe = add nsw i32 %i.iwb, -3                 ; 2 uses
  %i.iwf = tail call i32 @llvm.smin.i32(i32 %i.iwe, i32 5)
  %i.iwg = icmp sgt i32 %i.iwb, 6                 ; 2 uses
  %i.iwh = add nsw i32 %i.iwb, -4                 ; 5 uses
  %i.iwi = icmp sgt i32 %i.iwb, 8                 ; 3 uses
  %i.iwj = add nsw i32 %i.iwb, -2
  %i.iwk = icmp sgt i32 %i.iwb, 4
  %i.iwl = icmp eq i32 %.0740941.i, 0
  %i.iwm = select i1 %i.iwl, i32 9, i32 10        ; 3 uses
  %i.iwn = add nuw nsw i32 %i.iwm, %i.ivy         ; 2 uses
  %i.iwo = icmp eq i32 %.0740941.i, %i.ivd        ; 2 uses
  %.neg.i542 = select i1 %i.iwo, i32 -9, i32 -10
  %i.iwp = add nsw i32 %i.iwa, %.neg.i542         ; 2 uses
  %i.iwq = icmp slt i32 %i.iwn, %i.iwp
  %i.iwr = sext i32 %i.iwf to i64
  %i.iws = add i32 %i.iwm, %indvars.iv1056.i
  %i.iwt = mul i32 %i.iws, %i.bo
  %i.iwu = mul nuw nsw i32 %i.iwm, 112
  %invariant.op.i = add nsw i64 %i.iwr, -1
  br label %bb.ny

._crit_edge942.split.i:                           ; preds = %._crit_edge939.i
  tail call void @free(ptr noundef %i.ivh) #27, !noalias !494
  tail call void @free(ptr noundef %i.ivl) #27, !noalias !494
  tail call void @free(ptr noundef %i.ive) #27, !noalias !494
  tail call void @free(ptr noundef %i.ivf) #27, !noalias !494
  tail call void @free(ptr noundef %i.ivj) #27, !noalias !494
  tail call void @free(ptr noundef %i.ivk) #27, !noalias !494
  br label %demosaic_box3.exit

._crit_edge939.i:                                 ; preds = %._crit_edge935.split.i
  %i.iwv = add nuw nsw i32 %.0740941.i, 1
  %indvars.iv.next948.i = add i32 %indvars.iv947.i, %i.aow
  %indvars.iv.next1057.i = add nuw i32 %indvars.iv1056.i, 92
  br i1 %i.iwo, label %._crit_edge942.split.i, label %.preheader833.i

bb.ny:                                            ; preds = %._crit_edge935.split.i, %.preheader833.i
  %indvars.iv1058.i = phi i32 [ %i.iwt, %.preheader833.i ], [ %indvars.iv.next1059.i, %._crit_edge935.split.i ] ; 2 uses
  %indvars.iv1018.i = phi i32 [ 0, %.preheader833.i ], [ %indvars.iv.next1019.i, %._crit_edge935.split.i ] ; 11 uses
  %indvars.iv1016.i = phi i32 [ 112, %.preheader833.i ], [ %indvars.iv.next1017.i, %._crit_edge935.split.i ] ; 10 uses
  %indvars.iv949.i = phi i32 [ %indvars.iv947.i, %.preheader833.i ], [ %indvars.iv.next950.i, %._crit_edge935.split.i ] ; 2 uses
  %.0745937.i = phi i32 [ 0, %.preheader833.i ], [ %i.lhq, %._crit_edge935.split.i ] ; 5 uses
  %smin4142 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.iww = mul i32 %.0745937.i, 92
  %i.iwx = or disjoint i32 %i.iww, 1
  %smax4143 = call i32 @llvm.smax.i32(i32 %smin4142, i32 %i.iwx)
  %i.iwy = add i32 %indvars.iv1018.i, -1
  %i.iwz = add i32 %smax4143, %i.iwy              ; 3 uses
  %i.ixa = zext i32 %i.iwz to i64
  %i.ixb = add nuw nsw i64 %i.ixa, 1              ; 5 uses
  %smin4067 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.ixc = add i32 %smin4067, %indvars.iv1018.i
  %smin4068 = call i32 @llvm.smin.i32(i32 %i.ixc, i32 112)
  %i.ixd = add i32 %smin4068, -4
  %i.ixe = sext i32 %i.ixd to i64
  %i.ixf = shl nsw i64 %i.ixe, 2                  ; 2 uses
  %scevgep4069 = getelementptr i8, ptr %scevgep4066, i64 %i.ixf
  %smin4015 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.ixg = add i32 %smin4015, %indvars.iv1018.i
  %smin4016 = call i32 @llvm.smin.i32(i32 %i.ixg, i32 112)
  %i.ixh = add i32 %smin4016, -4
  %i.ixi = sext i32 %i.ixh to i64
  %i.ixj = shl nsw i64 %i.ixi, 2                  ; 3 uses
  %scevgep4017 = getelementptr i8, ptr %scevgep4014, i64 %i.ixj
  %i.ixk = add nsw i64 %i.ixj, -16                ; 3 uses
  %scevgep4018 = getelementptr i8, ptr %i.ive, i64 %i.ixj
  %smin3951 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.ixl = add i32 %smin3951, %indvars.iv1018.i
  %smin3952 = call i32 @llvm.smin.i32(i32 %i.ixl, i32 112)
  %i.ixm = add i32 %smin3952, -5
  %smin3861 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.ixn = add i32 %smin3861, %indvars.iv1018.i
  %smin3862 = call i32 @llvm.smin.i32(i32 %i.ixn, i32 112)
  %i.ixo = add i32 %smin3862, -9
  %smin3774 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.ixp = add i32 %smin3774, %indvars.iv1018.i
  %smin3775 = call i32 @llvm.smin.i32(i32 %i.ixp, i32 112)
  %i.ixq = add i32 %smin3775, -3
  %smax3776 = call i32 @llvm.smax.i32(i32 %i.ixq, i32 5)
  %i.ixr = add nsw i32 %smax3776, -4
  %i.ixs = lshr i32 %i.ixr, 1
  %i.ixt = add nuw nsw i32 %i.ixs, 1
  %smin3546 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.ixu = add i32 %smin3546, %indvars.iv1018.i
  %smin3547 = call i32 @llvm.smin.i32(i32 %i.ixu, i32 112)
  %i.ixv = add i32 %smin3547, -9
  %smin3262 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.ixw = add i32 %smin3262, %indvars.iv1018.i
  %smin3263 = call i32 @llvm.smin.i32(i32 %i.ixw, i32 112)
  %i.ixx = add i32 %smin3263, -9
  %smin1174 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %indvars.iv1016.i)
  %i.ixy = add i32 %smin1174, %indvars.iv1018.i
  %smin1175 = call i32 @llvm.smin.i32(i32 %i.ixy, i32 112) ; 7 uses
  %i.ixz = add i32 %smin1175, -4
  %i.iya = sext i32 %i.ixz to i64                 ; 6 uses
  %i.iyb = add i32 %smin1175, -3                  ; 2 uses
  %i.iyc = sext i32 %i.iyb to i64                 ; 2 uses
  %i.iyd = add nsw i64 %i.iya, 336
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.iyb, i32 5)
  %i.iye = add nsw i32 %smax.i, -4
  %i.iyf = lshr i32 %i.iye, 1                     ; 3 uses
  %i.iyg = mul i32 %.0745937.i, 92                ; 8 uses
  %i.iyh = add i32 %i.iyg, 112                    ; 2 uses
  %i.iyi = tail call i32 @llvm.smin.i32(i32 %i.iyh, i32 %i.bo) ; 4 uses
  %i.iyj = sub nsw i32 %i.iyi, %i.iyg             ; 4 uses
end_hunk_0
begin_hunk_1_@process:bb.a
  br label %vec.epilog.vector.body4182

vec.epilog.vector.body4182:                       ; preds = %vec.epilog.vector.body4182, %vec.epilog.ph4177
  %index4183 = phi i64 [ %vec.epilog.resume.val4178, %vec.epilog.ph4177 ], [ %index.next4185, %vec.epilog.vector.body4182 ] ; 3 uses
  %i.jbb = add nuw i64 %index4183, %i.iyv         ; 3 uses
  %gep5377 = getelementptr [4 x i8], ptr %invariant.gep5376, i64 %index4183
  %wide.load4184 = load <4 x float>, ptr %gep5377, align 4, !tbaa !12, !alias.scope !495
  %i.jbc = call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %wide.load4184, <4 x float> zeroinitializer)
  %i.jbd = fmul reassoc nsz arcp contract afn <4 x float> %i.jbc, %i.avv ; 3 uses
  %i.jbe = getelementptr inbounds nuw [4 x i8], ptr %i.izf, i64 %i.jbb
  store <4 x float> %i.jbd, ptr %i.jbe, align 16, !tbaa !12, !noalias !494
  %i.jbf = getelementptr inbounds nuw [4 x i8], ptr %i.izh, i64 %i.jbb
  store <4 x float> %i.jbd, ptr %i.jbf, align 16, !tbaa !12, !noalias !494
  %i.jbg = getelementptr inbounds nuw [4 x i8], ptr %i.ivh, i64 %i.jbb
  store <4 x float> %i.jbd, ptr %i.jbg, align 16, !tbaa !12, !noalias !494
  %index.next4185 = add nuw i64 %index4183, 4     ; 2 uses
  %i.jbh = icmp eq i64 %index.next4185, %n.vec4179
  br i1 %i.jbh, label %vec.epilog.middle.block4186, label %vec.epilog.vector.body4182, !llvm.loop !255

vec.epilog.middle.block4186:                      ; preds = %vec.epilog.vector.body4182
  br i1 %cmp.n4187, label %._crit_edge.i549, label %vec.epilog.scalar.ph4175.preheader

vec.epilog.scalar.ph4175.preheader:               ; preds = %iter.check4173, %vector.memcheck4146, %vec.epilog.iter.check4174, %vec.epilog.middle.block4186
  %indvars.iv953.i.ph = phi i64 [ %i.iyw, %iter.check4173 ], [ %i.iyw, %vector.memcheck4146 ], [ %i.izy, %vec.epilog.iter.check4174 ], [ %i.jaz, %vec.epilog.middle.block4186 ]
  %indvars.iv945.i.ph = phi i64 [ %i.iyv, %iter.check4173 ], [ %i.iyv, %vector.memcheck4146 ], [ %i.izz, %vec.epilog.iter.check4174 ], [ %i.jba, %vec.epilog.middle.block4186 ]
  %.0747838.i.ph = phi i32 [ %i.iyg, %iter.check4173 ], [ %i.iyg, %vector.memcheck4146 ], [ %i.iyp, %vec.epilog.iter.check4174 ], [ %i.iyr, %vec.epilog.middle.block4186 ]
  br label %vec.epilog.scalar.ph4175

._crit_edge.i549:                                 ; preds = %vec.epilog.scalar.ph4175, %vec.epilog.middle.block4186, %middle.block4171
  %i.jbi = add nuw nsw i32 %.0746839.i, 1         ; 2 uses
  %i.jbj = icmp slt i32 %i.jbi, %i.iwa
  %indvars.iv.next.i550 = add i32 %indvars.iv.i548, 112
  %indvars.iv.next952.i = add i32 %indvars.iv951.i, %i.bo
  br i1 %i.jbj, label %iter.check4173, label %._crit_edge842.split.i

vec.epilog.scalar.ph4175:                         ; preds = %vec.epilog.scalar.ph4175.preheader, %vec.epilog.scalar.ph4175
  %indvars.iv953.i = phi i64 [ %indvars.iv.next954.i, %vec.epilog.scalar.ph4175 ], [ %indvars.iv953.i.ph, %vec.epilog.scalar.ph4175.preheader ] ; 2 uses
  %indvars.iv945.i = phi i64 [ %indvars.iv.next946.i, %vec.epilog.scalar.ph4175 ], [ %indvars.iv945.i.ph, %vec.epilog.scalar.ph4175.preheader ] ; 4 uses
  %.0747838.i = phi i32 [ %i.jbr, %vec.epilog.scalar.ph4175 ], [ %.0747838.i.ph, %vec.epilog.scalar.ph4175.preheader ]
  %i.jbk = getelementptr inbounds nuw [4 x i8], ptr %i.axc, i64 %indvars.iv953.i
  %i.jbl = load float, ptr %i.jbk, align 4, !tbaa !12, !alias.scope !495
  %i.jbm = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.jbl, float 0.000000e+00)
  %i.jbn = fmul reassoc nsz arcp contract afn float %i.jbm, %i.avw ; 3 uses
  %i.jbo = getelementptr inbounds nuw [4 x i8], ptr %i.izf, i64 %indvars.iv945.i
  store float %i.jbn, ptr %i.jbo, align 4, !tbaa !12, !noalias !494
  %i.jbp = getelementptr inbounds nuw [4 x i8], ptr %i.izh, i64 %indvars.iv945.i
  store float %i.jbn, ptr %i.jbp, align 4, !tbaa !12, !noalias !494
  %i.jbq = getelementptr inbounds nuw [4 x i8], ptr %i.ivh, i64 %indvars.iv945.i
  store float %i.jbn, ptr %i.jbq, align 4, !tbaa !12, !noalias !494
  %i.jbr = add nuw nsw i32 %.0747838.i, 1         ; 2 uses
  %indvars.iv.next946.i = add nuw nsw i64 %indvars.iv945.i, 1
  %indvars.iv.next954.i = add nuw nsw i64 %indvars.iv953.i, 1
  %i.jbs = icmp slt i32 %i.jbr, %i.iyi
  br i1 %i.jbs, label %vec.epilog.scalar.ph4175, label %._crit_edge.i549, !llvm.loop !256

._crit_edge851.split.i:                           ; preds = %._crit_edge847.i, %.lr.ph850.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27, !noalias !496
  br i1 %i.iwi, label %.lr.ph872.i, label %.preheader832.i

.lr.ph872.i:                                      ; preds = %._crit_edge851.split.i
  %i.jbt = icmp sgt i32 %i.iyj, 6
  br i1 %i.jbt, label %.lr.ph855.preheader.i.preheader, label %.lr.ph881.i

.lr.ph855.preheader.i.preheader:                  ; preds = %.lr.ph872.i
  %i.jbu = add nsw i64 %i.iyc, -3                 ; 3 uses
  %min.iters.check4094 = icmp ult i64 %i.jbu, 8
  %n.vec4096 = and i64 %i.jbu, -8                 ; 4 uses
  %i.jbv = or disjoint i64 %n.vec4096, 3
  %cmp.n4107 = icmp eq i64 %i.jbu, %n.vec4096
  %i.jbw = add nsw i64 %i.iya, -4                 ; 3 uses
  %min.iters.check4072 = icmp ult i64 %i.jbw, 8
  %n.vec4078 = and i64 %i.jbw, -8                 ; 4 uses
  %i.jbx = or disjoint i64 %n.vec4078, 4
  %cmp.n4090 = icmp eq i64 %i.jbw, %n.vec4078
  %i.jby = add nsw i64 %i.iya, -4                 ; 3 uses
  %min.iters.check4021 = icmp ult i64 %i.jby, 8
  %n.vec4039 = and i64 %i.jby, -8                 ; 4 uses
  %i.jbz = or disjoint i64 %n.vec4039, 4
  %cmp.n4050 = icmp eq i64 %i.jby, %n.vec4039
  br label %.lr.ph855.preheader.i

.lr.ph846.i:                                      ; preds = %.lr.ph846.i.preheader, %._crit_edge847.i
  %indvars.iv1165 = phi i64 [ %indvars.iv.next1166, %._crit_edge847.i ], [ %i.iyd, %.lr.ph846.i.preheader ] ; 2 uses
  %.sroa.phi = phi ptr [ %.sroa.gep, %._crit_edge847.i ], [ %.sroa.gep5326, %.lr.ph846.i.preheader ] ; 2 uses
  %indvars.iv967.i = phi i64 [ 4, %._crit_edge847.i ], [ 3, %.lr.ph846.i.preheader ]
  %indvars.iv960.i = phi i64 [ %indvars.iv.next961.i, %._crit_edge847.i ], [ 340, %.lr.ph846.i.preheader ] ; 4 uses
  br i1 %min.iters.check4111, label %scalar.ph4110.preheader, label %vector.ph4112

vector.ph4112:                                    ; preds = %.lr.ph846.i
  %i.jca = add i64 %indvars.iv960.i, %n.vec4113
  %i.jcb = getelementptr [4 x i8], ptr %i.ivh, i64 %indvars.iv960.i
  br label %vector.body4114

vector.body4114:                                  ; preds = %vector.body4114, %vector.ph4112
  %index4115 = phi i64 [ 0, %vector.ph4112 ], [ %index.next4123, %vector.body4114 ] ; 3 uses
  %i.jcc = getelementptr [4 x i8], ptr %i.jcb, i64 %index4115 ; 7 uses
  %i.jcd = getelementptr i8, ptr %i.jcc, i64 -1344
  %wide.load4116 = load <8 x float>, ptr %i.jcd, align 16, !tbaa !12, !noalias !494
  %i.jce = getelementptr i8, ptr %i.jcc, i64 -448
  %wide.load4117 = load <8 x float>, ptr %i.jce, align 16, !tbaa !12, !noalias !494
  %i.jcf = getelementptr inbounds nuw i8, ptr %i.jcc, i64 448
  %wide.load4118 = load <8 x float>, ptr %i.jcf, align 16, !tbaa !12, !noalias !494
  %i.jcg = getelementptr inbounds nuw i8, ptr %i.jcc, i64 1344
  %wide.load4119 = load <8 x float>, ptr %i.jcg, align 16, !tbaa !12, !noalias !494
  %i.jch = getelementptr i8, ptr %i.jcc, i64 -896
  %wide.load4120 = load <8 x float>, ptr %i.jch, align 16, !tbaa !12, !noalias !494
  %i.jci = getelementptr inbounds nuw i8, ptr %i.jcc, i64 896
  %wide.load4121 = load <8 x float>, ptr %i.jci, align 16, !tbaa !12, !noalias !494
  %i.jcj = fadd reassoc nsz arcp contract afn <8 x float> %wide.load4121, %wide.load4120
  %i.jck = fmul reassoc nsz arcp contract afn <8 x float> %i.jcj, splat (float -3.000000e+00)
  %wide.load4122 = load <8 x float>, ptr %i.jcc, align 16, !tbaa !12, !noalias !494
  %i.jcl = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4122, splat (float 6.000000e+00)
  %i.jcm = fadd reassoc nsz arcp contract afn <8 x float> %wide.load4117, %wide.load4118
  %i.jcn = fsub reassoc nsz arcp contract afn <8 x float> %wide.load4116, %i.jcm
  %i.jco = fadd reassoc nsz arcp contract afn <8 x float> %i.jcn, %wide.load4119
  %i.jcp = fadd reassoc nsz arcp contract afn <8 x float> %i.jco, %i.jck
  %i.jcq = fadd reassoc nsz arcp contract afn <8 x float> %i.jcp, %i.jcl ; 2 uses
  %i.jcr = fmul reassoc nsz arcp contract afn <8 x float> %i.jcq, %i.jcq
  %i.jcs = getelementptr [4 x i8], ptr %.sroa.phi, i64 %index4115
  %i.jct = getelementptr i8, ptr %i.jcs, i64 -1248
  store <8 x float> %i.jcr, ptr %i.jct, align 16, !tbaa !12, !noalias !496
  %index.next4123 = add nuw i64 %index4115, 8     ; 2 uses
  %i.jcu = icmp eq i64 %index.next4123, %n.vec4113
  br i1 %i.jcu, label %middle.block4124, label %vector.body4114, !llvm.loop !257

middle.block4124:                                 ; preds = %vector.body4114
  br i1 %cmp.n4125, label %._crit_edge847.i, label %scalar.ph4110.preheader

scalar.ph4110.preheader:                          ; preds = %.lr.ph846.i, %middle.block4124
  %indvars.iv962.i.ph = phi i64 [ %indvars.iv960.i, %.lr.ph846.i ], [ %i.jca, %middle.block4124 ]
  %indvars.iv958.i.ph = phi i64 [ 4, %.lr.ph846.i ], [ %i.iyu, %middle.block4124 ]
  br label %scalar.ph4110

._crit_edge847.i:                                 ; preds = %scalar.ph4110, %middle.block4124
  %i.jcv = icmp slt i64 %indvars.iv967.i, %invariant.op.i
  %indvars.iv.next961.i = add nuw nsw i64 %indvars.iv960.i, 112
  %indvars.iv.next1166 = add i64 %indvars.iv1165, 112
  br i1 %i.jcv, label %.lr.ph846.i, label %._crit_edge851.split.i

scalar.ph4110:                                    ; preds = %scalar.ph4110.preheader, %scalar.ph4110
  %indvars.iv962.i = phi i64 [ %indvars.iv.next963.i, %scalar.ph4110 ], [ %indvars.iv962.i.ph, %scalar.ph4110.preheader ] ; 2 uses
  %indvars.iv958.i = phi i64 [ %indvars.iv.next959.i, %scalar.ph4110 ], [ %indvars.iv958.i.ph, %scalar.ph4110.preheader ] ; 2 uses
  %i.jcw = getelementptr [4 x i8], ptr %i.ivh, i64 %indvars.iv962.i ; 7 uses
  %i.jcx = getelementptr i8, ptr %i.jcw, i64 -1344
  %i.jcy = load float, ptr %i.jcx, align 4, !tbaa !12, !noalias !494
  %i.jcz = getelementptr i8, ptr %i.jcw, i64 -448
  %i.jda = load float, ptr %i.jcz, align 4, !tbaa !12, !noalias !494
  %i.jdb = getelementptr inbounds nuw i8, ptr %i.jcw, i64 448
  %i.jdc = load float, ptr %i.jdb, align 4, !tbaa !12, !noalias !494
  %i.jdd = getelementptr inbounds nuw i8, ptr %i.jcw, i64 1344
  %i.jde = load float, ptr %i.jdd, align 4, !tbaa !12, !noalias !494
  %i.jdf = getelementptr i8, ptr %i.jcw, i64 -896
  %i.jdg = load float, ptr %i.jdf, align 4, !tbaa !12, !noalias !494
  %i.jdh = getelementptr inbounds nuw i8, ptr %i.jcw, i64 896
  %i.jdi = load float, ptr %i.jdh, align 4, !tbaa !12, !noalias !494
  %i.jdj = fadd reassoc nsz arcp contract afn float %i.jdi, %i.jdg
  %.neg826.i = fmul reassoc nsz arcp contract afn float %i.jdj, -3.000000e+00
  %i.jdk = load float, ptr %i.jcw, align 4, !tbaa !12, !noalias !494
  %i.jdl = fmul reassoc nsz arcp contract afn float %i.jdk, 6.000000e+00
  %i.jdm = fadd reassoc nsz arcp contract afn float %i.jda, %i.jdc
  %.neg827.i = fsub reassoc nsz arcp contract afn float %i.jcy, %i.jdm
  %i.jdn = fadd reassoc nsz arcp contract afn float %.neg827.i, %i.jde
  %i.jdo = fadd reassoc nsz arcp contract afn float %i.jdn, %.neg826.i
  %i.jdp = fadd reassoc nsz arcp contract afn float %i.jdo, %i.jdl ; 2 uses
  %i.jdq = fmul reassoc nsz arcp contract afn float %i.jdp, %i.jdp
  %i.jdr = getelementptr [4 x i8], ptr %.sroa.phi, i64 %indvars.iv958.i
  %i.jds = getelementptr i8, ptr %i.jdr, i64 -1264
  store float %i.jdq, ptr %i.jds, align 4, !tbaa !12, !noalias !496
  %indvars.iv.next959.i = add nuw nsw i64 %indvars.iv958.i, 1
  %indvars.iv.next963.i = add nuw i64 %indvars.iv962.i, 1 ; 2 uses
  %exitcond1167.not = icmp eq i64 %indvars.iv.next963.i, %indvars.iv1165
  br i1 %exitcond1167.not, label %._crit_edge847.i, label %scalar.ph4110, !llvm.loop !258

.loopexit.i546:                                   ; preds = %.lr.ph866.i, %middle.block4049, %._crit_edge856.i
  %i.jdt = add nuw nsw i32 %.0772867.i, 1         ; 2 uses
  %i.jdu = icmp slt i32 %i.jdt, %i.iwh
  %indvars.iv.next973.i = add i32 %indvars.iv972.i, 112
  %indvars.iv.next982.i = add i32 %indvars.iv981.i, 112
  br i1 %i.jdu, label %.lr.ph855.preheader.i, label %.preheader832.i

.preheader832.i:                                  ; preds = %.loopexit.i546, %._crit_edge851.split.i, %._crit_edge851.split.thread.i
  br i1 %i.iwk, label %.lr.ph881.i, label %._crit_edge925.i

.lr.ph881.i:                                      ; preds = %.lr.ph872.i, %.preheader832.i
  %i.jdv = add nsw i32 %i.iyk, -2                 ; 2 uses
  %i.jdw = add i32 %smin1175, -5
  br label %bb.ob

.lr.ph855.preheader.i:                            ; preds = %.lr.ph855.preheader.i.preheader, %.loopexit.i546
  %indvars.iv981.i = phi i32 [ %indvars.iv.next982.i, %.loopexit.i546 ], [ 560, %.lr.ph855.preheader.i.preheader ] ; 3 uses
  %indvars.iv972.i = phi i32 [ %indvars.iv.next973.i, %.loopexit.i546 ], [ 448, %.lr.ph855.preheader.i.preheader ] ; 2 uses
  %.0769870.i = phi ptr [ %.0770869.i, %.loopexit.i546 ], [ %i.c, %.lr.ph855.preheader.i.preheader ] ; 5 uses
  %.0770869.i = phi ptr [ %.0771868.i, %.loopexit.i546 ], [ %i.aou, %.lr.ph855.preheader.i.preheader ] ; 5 uses
  %.0771868.i = phi ptr [ %.0769870.i, %.loopexit.i546 ], [ %i.aov, %.lr.ph855.preheader.i.preheader ] ; 9 uses
  %.0772867.i = phi i32 [ %i.jdt, %.loopexit.i546 ], [ 4, %.lr.ph855.preheader.i.preheader ]
  %i.jdx = zext i32 %indvars.iv972.i to i64       ; 5 uses
  %i.jdy = add nsw i64 %i.iya, %i.jdx
  %i.jdz = zext i32 %indvars.iv981.i to i64       ; 2 uses
  %i.jea = add nsw i64 %i.iya, %i.jdz
  %i.jeb = add nsw i64 %i.iyc, %i.jdx
  %i.jec = or disjoint i64 %i.jdx, 3              ; 4 uses
  %.phi.trans.insert.i = getelementptr [4 x i8], ptr %i.ivh, i64 %i.jec
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !12, !noalias !494 ; 2 uses
  br i1 %min.iters.check4094, label %.lr.ph855.i.preheader, label %vector.ph4095

vector.ph4095:                                    ; preds = %.lr.ph855.preheader.i
  %i.jed = add nsw i64 %i.jec, %n.vec4096
  %vector.recur.init = insertelement <8 x float> poison, float %.pre.i, i64 7
  br label %vector.body4097

vector.body4097:                                  ; preds = %vector.body4097, %vector.ph4095
  %index4098 = phi i64 [ 0, %vector.ph4095 ], [ %index.next4105, %vector.body4097 ] ; 3 uses
  %vector.recur = phi <8 x float> [ %vector.recur.init, %vector.ph4095 ], [ %wide.load4101, %vector.body4097 ]
  %i.jee = add nuw i64 %i.jec, %index4098         ; 2 uses
  %i.jef = getelementptr [4 x i8], ptr %i.ivh, i64 %i.jee ; 5 uses
  %i.jeg = getelementptr i8, ptr %i.jef, i64 -12
  %wide.load4099 = load <8 x float>, ptr %i.jeg, align 32, !tbaa !12, !noalias !494
  %i.jeh = getelementptr i8, ptr %i.jef, i64 -4
  %wide.load4100 = load <8 x float>, ptr %i.jeh, align 8, !tbaa !12, !noalias !494
  %i.jei = getelementptr inbounds nuw [4 x i8], ptr %i.ivh, i64 %i.jee
  %i.jej = getelementptr inbounds nuw i8, ptr %i.jei, i64 4
  %wide.load4101 = load <8 x float>, ptr %i.jej, align 16, !tbaa !12, !noalias !494 ; 4 uses
  %6 = shufflevector <8 x float> %vector.recur, <8 x float> %wide.load4101, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.jek = getelementptr inbounds nuw i8, ptr %i.jef, i64 12
  %wide.load4102 = load <8 x float>, ptr %i.jek, align 8, !tbaa !12, !noalias !494
  %i.jel = getelementptr i8, ptr %i.jef, i64 -8
  %wide.load4103 = load <8 x float>, ptr %i.jel, align 4, !tbaa !12, !noalias !494
  %i.jem = getelementptr inbounds nuw i8, ptr %i.jef, i64 8
  %wide.load4104 = load <8 x float>, ptr %i.jem, align 4, !tbaa !12, !noalias !494
  %i.jen = fadd reassoc nsz arcp contract afn <8 x float> %wide.load4104, %wide.load4103
  %i.jeo = fmul reassoc nsz arcp contract afn <8 x float> %i.jen, splat (float -3.000000e+00)
  %i.jep = fmul reassoc nsz arcp contract afn <8 x float> %6, splat (float 6.000000e+00)
  %i.jeq = fadd reassoc nsz arcp contract afn <8 x float> %i.jep, %wide.load4099
  %7 = fadd reassoc nsz arcp contract afn <8 x float> %wide.load4100, %wide.load4101
  %8 = fsub reassoc nsz arcp contract afn <8 x float> %i.jeq, %7
  %i.jer = fadd reassoc nsz arcp contract afn <8 x float> %8, %wide.load4102
  %i.jes = fadd reassoc nsz arcp contract afn <8 x float> %i.jer, %i.jeo ; 2 uses
  %i.jet = fmul reassoc nsz arcp contract afn <8 x float> %i.jes, %i.jes
  %i.jeu = getelementptr [4 x i8], ptr %i.d, i64 %index4098
  store <8 x float> %i.jet, ptr %i.jeu, align 16, !tbaa !12, !noalias !496
  %index.next4105 = add nuw i64 %index4098, 8     ; 2 uses
  %i.jev = icmp eq i64 %index.next4105, %n.vec4096
  br i1 %i.jev, label %middle.block4106, label %vector.body4097, !llvm.loop !259

middle.block4106:                                 ; preds = %vector.body4097
  %vector.recur.extract = extractelement <8 x float> %wide.load4101, i64 7
  br i1 %cmp.n4107, label %._crit_edge856.i, label %.lr.ph855.i.preheader

.lr.ph855.i.preheader:                            ; preds = %.lr.ph855.preheader.i, %middle.block4106
  %.ph = phi float [ %.pre.i, %.lr.ph855.preheader.i ], [ %vector.recur.extract, %middle.block4106 ]
  %indvars.iv974.i.ph = phi i64 [ %i.jec, %.lr.ph855.preheader.i ], [ %i.jed, %middle.block4106 ]
  %indvars.iv970.i.ph = phi i64 [ 3, %.lr.ph855.preheader.i ], [ %i.jbv, %middle.block4106 ]
  br label %.lr.ph855.i

._crit_edge856.i:                                 ; preds = %.lr.ph855.i, %middle.block4106
  %i.jew = or disjoint i64 %i.jdx, 4              ; 4 uses
  br i1 %i.iys, label %.lr.ph860.i.preheader, label %.loopexit.i546

.lr.ph860.i.preheader:                            ; preds = %._crit_edge856.i
  %i.jex = or disjoint i32 %indvars.iv981.i, 4
  %i.jey = zext i32 %i.jex to i64                 ; 4 uses
  br i1 %min.iters.check4072, label %.lr.ph860.i.preheader5250, label %vector.memcheck4073

vector.memcheck4073:                              ; preds = %.lr.ph860.i.preheader
  %i.jez = getelementptr i8, ptr %.0771868.i, i64 %i.ixf
  %i.jfa = getelementptr i8, ptr %i.jez, i64 -16
  %i.jfb = shl nuw nsw i64 %i.jdz, 2              ; 2 uses
  %i.jfc = getelementptr i8, ptr %scevgep4070, i64 %i.jfb
  %i.jfd = getelementptr i8, ptr %scevgep4069, i64 %i.jfb
  %bound04074 = icmp ult ptr %.0771868.i, %i.jfd
  %bound14075 = icmp ult ptr %i.jfc, %i.jfa
  %found.conflict4076 = and i1 %bound04074, %bound14075
  br i1 %found.conflict4076, label %.lr.ph860.i.preheader5250, label %vector.ph4077

vector.ph4077:                                    ; preds = %vector.memcheck4073
  %i.jfe = add nsw i64 %n.vec4078, %i.jey
  %invariant.gep5378 = getelementptr [4 x i8], ptr %i.ivh, i64 %i.jey
  br label %vector.body4079

vector.body4079:                                  ; preds = %vector.body4079, %vector.ph4077
  %index4080 = phi i64 [ 0, %vector.ph4077 ], [ %index.next4088, %vector.body4079 ] ; 3 uses
  %gep5379 = getelementptr [4 x i8], ptr %invariant.gep5378, i64 %index4080 ; 7 uses
  %i.jff = getelementptr i8, ptr %gep5379, i64 -1344
  %wide.load4081 = load <8 x float>, ptr %i.jff, align 16, !tbaa !12, !alias.scope !497, !noalias !494
  %i.jfg = getelementptr i8, ptr %gep5379, i64 -448
  %wide.load4082 = load <8 x float>, ptr %i.jfg, align 16, !tbaa !12, !alias.scope !497, !noalias !494
  %i.jfh = getelementptr inbounds nuw i8, ptr %gep5379, i64 448
  %wide.load4083 = load <8 x float>, ptr %i.jfh, align 16, !tbaa !12, !alias.scope !497, !noalias !494
  %i.jfi = getelementptr inbounds nuw i8, ptr %gep5379, i64 1344
  %wide.load4084 = load <8 x float>, ptr %i.jfi, align 16, !tbaa !12, !alias.scope !497, !noalias !494
  %i.jfj = getelementptr i8, ptr %gep5379, i64 -896
  %wide.load4085 = load <8 x float>, ptr %i.jfj, align 16, !tbaa !12, !alias.scope !497, !noalias !494
  %i.jfk = getelementptr inbounds nuw i8, ptr %gep5379, i64 896
  %wide.load4086 = load <8 x float>, ptr %i.jfk, align 16, !tbaa !12, !alias.scope !497, !noalias !494
  %i.jfl = fadd reassoc nsz arcp contract afn <8 x float> %wide.load4086, %wide.load4085
  %i.jfm = fmul reassoc nsz arcp contract afn <8 x float> %i.jfl, splat (float -3.000000e+00)
  %wide.load4087 = load <8 x float>, ptr %gep5379, align 16, !tbaa !12, !alias.scope !497, !noalias !494
  %i.jfn = fmul reassoc nsz arcp contract afn <8 x float> %wide.load4087, splat (float 6.000000e+00)
  %i.jfo = fadd reassoc nsz arcp contract afn <8 x float> %wide.load4082, %wide.load4083
  %i.jfp = fsub reassoc nsz arcp contract afn <8 x float> %wide.load4081, %i.jfo
  %i.jfq = fadd reassoc nsz arcp contract afn <8 x float> %i.jfp, %wide.load4084
  %i.jfr = fadd reassoc nsz arcp contract afn <8 x float> %i.jfq, %i.jfm
  %i.jfs = fadd reassoc nsz arcp contract afn <8 x float> %i.jfr, %i.jfn ; 2 uses
  %i.jft = fmul reassoc nsz arcp contract afn <8 x float> %i.jfs, %i.jfs
  %i.jfu = getelementptr [4 x i8], ptr %.0771868.i, i64 %index4080
  store <8 x float> %i.jft, ptr %i.jfu, align 4, !tbaa !12, !alias.scope !498, !noalias !499
  %index.next4088 = add nuw i64 %index4080, 8     ; 2 uses
  %i.jfv = icmp eq i64 %index.next4088, %n.vec4078
  br i1 %i.jfv, label %middle.block4089, label %vector.body4079, !llvm.loop !263

middle.block4089:                                 ; preds = %vector.body4079
  br i1 %cmp.n4090, label %.lr.ph866.i.preheader, label %.lr.ph860.i.preheader5250

.lr.ph860.i.preheader5250:                        ; preds = %vector.memcheck4073, %.lr.ph860.i.preheader, %middle.block4089
  %indvars.iv983.i.ph = phi i64 [ %i.jey, %vector.memcheck4073 ], [ %i.jey, %.lr.ph860.i.preheader ], [ %i.jfe, %middle.block4089 ]
  %indvars.iv979.i.ph = phi i64 [ 4, %vector.memcheck4073 ], [ 4, %.lr.ph860.i.preheader ], [ %i.jbx, %middle.block4089 ]
  br label %.lr.ph860.i

.lr.ph855.i:                                      ; preds = %.lr.ph855.i.preheader, %.lr.ph855.i
  %9 = phi float [ %i.jgc, %.lr.ph855.i ], [ %.ph, %.lr.ph855.i.preheader ]
  %indvars.iv974.i = phi i64 [ %indvars.iv.next975.i, %.lr.ph855.i ], [ %indvars.iv974.i.ph, %.lr.ph855.i.preheader ] ; 2 uses
  %indvars.iv970.i = phi i64 [ %indvars.iv.next971.i, %.lr.ph855.i ], [ %indvars.iv970.i.ph, %.lr.ph855.i.preheader ] ; 2 uses
  %i.jfw = getelementptr [4 x i8], ptr %i.ivh, i64 %indvars.iv974.i ; 5 uses
  %i.jfx = getelementptr i8, ptr %i.jfw, i64 -12
  %i.jfy = load float, ptr %i.jfx, align 4, !tbaa !12, !noalias !494
  %i.jfz = getelementptr i8, ptr %i.jfw, i64 -4
  %i.jga = load float, ptr %i.jfz, align 4, !tbaa !12, !noalias !494
  %indvars.iv.next975.i = add nuw nsw i64 %indvars.iv974.i, 1 ; 3 uses
  %i.jgb = getelementptr inbounds nuw [4 x i8], ptr %i.ivh, i64 %indvars.iv.next975.i
  %i.jgc = load float, ptr %i.jgb, align 4, !tbaa !12, !noalias !494 ; 2 uses
  %i.jgd = getelementptr inbounds nuw i8, ptr %i.jfw, i64 12
  %i.jge = load float, ptr %i.jgd, align 4, !tbaa !12, !noalias !494
  %i.jgf = getelementptr i8, ptr %i.jfw, i64 -8
  %i.jgg = load float, ptr %i.jgf, align 4, !tbaa !12, !noalias !494
  %i.jgh = getelementptr inbounds nuw i8, ptr %i.jfw, i64 8
  %i.jgi = load float, ptr %i.jgh, align 4, !tbaa !12, !noalias !494
  %i.jgj = fadd reassoc nsz arcp contract afn float %i.jgi, %i.jgg
  %.neg821.i = fmul reassoc nsz arcp contract afn float %i.jgj, -3.000000e+00
  %i.jgk = fmul reassoc nsz arcp contract afn float %9, 6.000000e+00
  %.neg768 = fadd reassoc nsz arcp contract afn float %i.jgk, %i.jfy
  %10 = fadd reassoc nsz arcp contract afn float %i.jga, %i.jgc
  %11 = fsub reassoc nsz arcp contract afn float %.neg768, %10
  %i.jgl = fadd reassoc nsz arcp contract afn float %11, %i.jge
  %i.jgm = fadd reassoc nsz arcp contract afn float %i.jgl, %.neg821.i ; 2 uses
  %i.jgn = fmul reassoc nsz arcp contract afn float %i.jgm, %i.jgm
  %i.jgo = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv970.i
  %i.jgp = getelementptr i8, ptr %i.jgo, i64 -12
  store float %i.jgn, ptr %i.jgp, align 4, !tbaa !12, !noalias !496
  %indvars.iv.next971.i = add nuw nsw i64 %indvars.iv970.i, 1
  %exitcond1170.not = icmp eq i64 %indvars.iv.next975.i, %i.jeb
  br i1 %exitcond1170.not, label %._crit_edge856.i, label %.lr.ph855.i, !llvm.loop !264

.lr.ph860.i:                                      ; preds = %.lr.ph860.i.preheader5250, %.lr.ph860.i
  %indvars.iv983.i = phi i64 [ %indvars.iv.next984.i, %.lr.ph860.i ], [ %indvars.iv983.i.ph, %.lr.ph860.i.preheader5250 ] ; 2 uses
  %indvars.iv979.i = phi i64 [ %indvars.iv.next980.i, %.lr.ph860.i ], [ %indvars.iv979.i.ph, %.lr.ph860.i.preheader5250 ] ; 2 uses
  %i.jgq = getelementptr [4 x i8], ptr %i.ivh, i64 %indvars.iv983.i ; 7 uses
  %i.jgr = getelementptr i8, ptr %i.jgq, i64 -1344
  %i.jgs = load float, ptr %i.jgr, align 4, !tbaa !12, !noalias !494
  %i.jgt = getelementptr i8, ptr %i.jgq, i64 -448
  %i.jgu = load float, ptr %i.jgt, align 4, !tbaa !12, !noalias !494
  %i.jgv = getelementptr inbounds nuw i8, ptr %i.jgq, i64 448
  %i.jgw = load float, ptr %i.jgv, align 4, !tbaa !12, !noalias !494
  %i.jgx = getelementptr inbounds nuw i8, ptr %i.jgq, i64 1344
  %i.jgy = load float, ptr %i.jgx, align 4, !tbaa !12, !noalias !494
  %i.jgz = getelementptr i8, ptr %i.jgq, i64 -896
  %i.jha = load float, ptr %i.jgz, align 4, !tbaa !12, !noalias !494
  %i.jhb = getelementptr inbounds nuw i8, ptr %i.jgq, i64 896
  %i.jhc = load float, ptr %i.jhb, align 4, !tbaa !12, !noalias !494
  %i.jhd = fadd reassoc nsz arcp contract afn float %i.jhc, %i.jha
  %.neg816.i = fmul reassoc nsz arcp contract afn float %i.jhd, -3.000000e+00
  %i.jhe = load float, ptr %i.jgq, align 4, !tbaa !12, !noalias !494
  %i.jhf = fmul reassoc nsz arcp contract afn float %i.jhe, 6.000000e+00
  %i.jhg = fadd reassoc nsz arcp contract afn float %i.jgu, %i.jgw
  %.neg817.i = fsub reassoc nsz arcp contract afn float %i.jgs, %i.jhg
  %i.jhh = fadd reassoc nsz arcp contract afn float %.neg817.i, %i.jgy
  %i.jhi = fadd reassoc nsz arcp contract afn float %i.jhh, %.neg816.i
  %i.jhj = fadd reassoc nsz arcp contract afn float %i.jhi, %i.jhf ; 2 uses
  %i.jhk = fmul reassoc nsz arcp contract afn float %i.jhj, %i.jhj
  %i.jhl = getelementptr [4 x i8], ptr %.0771868.i, i64 %indvars.iv979.i
  %i.jhm = getelementptr i8, ptr %i.jhl, i64 -16
  store float %i.jhk, ptr %i.jhm, align 4, !tbaa !12, !noalias !496
  %indvars.iv.next980.i = add nuw nsw i64 %indvars.iv979.i, 1
  %indvars.iv.next984.i = add nuw nsw i64 %indvars.iv983.i, 1 ; 2 uses
  %exitcond1173.not = icmp eq i64 %indvars.iv.next984.i, %i.jea
  br i1 %exitcond1173.not, label %.lr.ph866.i.preheader, label %.lr.ph860.i, !llvm.loop !265

.lr.ph866.i.preheader:                            ; preds = %.lr.ph860.i, %middle.block4089
  br i1 %min.iters.check4021, label %.lr.ph866.i.preheader5249, label %vector.memcheck4022

vector.memcheck4022:                              ; preds = %.lr.ph866.i.preheader
  %i.jhn = shl nuw nsw i64 %i.jdx, 2              ; 2 uses
  %i.jho = getelementptr i8, ptr %scevgep4019, i64 %i.jhn ; 4 uses
  %i.jhp = getelementptr i8, ptr %scevgep4018, i64 %i.jhn ; 4 uses
  %i.jhq = getelementptr i8, ptr %.0771868.i, i64 %i.ixk
  %i.jhr = getelementptr i8, ptr %.0770869.i, i64 %i.ixk
  %i.jhs = getelementptr i8, ptr %.0769870.i, i64 %i.ixk
  %bound04023 = icmp ult ptr %i.jho, %i.jhq
  %bound14024 = icmp ult ptr %.0771868.i, %i.jhp
  %found.conflict4025 = and i1 %bound04023, %bound14024
  %bound04026 = icmp ult ptr %i.jho, %i.jhr
  %bound14027 = icmp ult ptr %.0770869.i, %i.jhp
  %found.conflict4028 = and i1 %bound04026, %bound14027
  %conflict.rdx4029 = or i1 %found.conflict4025, %found.conflict4028
  %bound04030 = icmp ult ptr %i.jho, %i.jhs
  %bound14031 = icmp ult ptr %.0769870.i, %i.jhp
  %found.conflict4032 = and i1 %bound04030, %bound14031
  %conflict.rdx4033 = or i1 %conflict.rdx4029, %found.conflict4032
  %bound04034 = icmp ult ptr %i.jho, %scevgep4017
  %bound14035 = icmp ult ptr %i.d, %i.jhp
  %found.conflict4036 = and i1 %bound04034, %bound14035
  %conflict.rdx4037 = or i1 %conflict.rdx4033, %found.conflict4036
  br i1 %conflict.rdx4037, label %.lr.ph866.i.preheader5249, label %vector.ph4038

vector.ph4038:                                    ; preds = %vector.memcheck4022
  %i.jht = add nsw i64 %i.jew, %n.vec4039
  %i.jhu = getelementptr inbounds nuw [4 x i8], ptr %i.ive, i64 %i.jew
  br label %vector.body4040

vector.body4040:                                  ; preds = %vector.body4040, %vector.ph4038
  %index4041 = phi i64 [ 0, %vector.ph4038 ], [ %index.next4048, %vector.body4040 ] ; 7 uses
  %i.jhv = getelementptr inbounds [4 x i8], ptr %.0769870.i, i64 %index4041
  %wide.load4042 = load <8 x float>, ptr %i.jhv, align 4, !tbaa !12, !alias.scope !500, !noalias !496
  %i.jhw = getelementptr inbounds [4 x i8], ptr %.0770869.i, i64 %index4041
  %wide.load4043 = load <8 x float>, ptr %i.jhw, align 4, !tbaa !12, !alias.scope !501, !noalias !496
  %i.jhx = fadd reassoc nsz arcp contract afn <8 x float> %wide.load4043, %wide.load4042
  %i.jhy = getelementptr inbounds [4 x i8], ptr %.0771868.i, i64 %index4041
  %wide.load4044 = load <8 x float>, ptr %i.jhy, align 4, !tbaa !12, !alias.scope !502, !noalias !496
  %i.jhz = fadd reassoc nsz arcp contract afn <8 x float> %i.jhx, %wide.load4044
  %i.jia = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.jhz, <8 x float> splat (float 1.000000e-10)) ; 2 uses
  %i.jib = getelementptr inbounds [4 x i8], ptr %i.d, i64 %index4041
  %wide.load4045 = load <8 x float>, ptr %i.jib, align 16, !tbaa !12, !alias.scope !503, !noalias !496
  %i.jic = getelementptr [4 x i8], ptr %i.d, i64 %index4041 ; 2 uses
  %i.jid = getelementptr i8, ptr %i.jic, i64 4
  %wide.load4046 = load <8 x float>, ptr %i.jid, align 4, !tbaa !12, !alias.scope !503, !noalias !496
  %i.jie = fadd reassoc nsz arcp contract afn <8 x float> %wide.load4046, %wide.load4045
  %i.jif = getelementptr i8, ptr %i.jic, i64 8
  %wide.load4047 = load <8 x float>, ptr %i.jif, align 8, !tbaa !12, !alias.scope !503, !noalias !496
  %i.jig = fadd reassoc nsz arcp contract afn <8 x float> %i.jie, %wide.load4047
  %i.jih = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.jig, <8 x float> splat (float 1.000000e-10))
  %i.jii = fadd reassoc nsz arcp contract afn <8 x float> %i.jih, %i.jia
  %i.jij = fdiv reassoc nsz arcp contract afn <8 x float> %i.jia, %i.jii
  %i.jik = getelementptr inbounds nuw [4 x i8], ptr %i.jhu, i64 %index4041
  store <8 x float> %i.jij, ptr %i.jik, align 16, !tbaa !12, !alias.scope !504, !noalias !505
  %index.next4048 = add nuw i64 %index4041, 8     ; 2 uses
  %i.jil = icmp eq i64 %index.next4048, %n.vec4039
  br i1 %i.jil, label %middle.block4049, label %vector.body4040, !llvm.loop !272

middle.block4049:                                 ; preds = %vector.body4040
  br i1 %cmp.n4050, label %.loopexit.i546, label %.lr.ph866.i.preheader5249

.lr.ph866.i.preheader5249:                        ; preds = %vector.memcheck4022, %.lr.ph866.i.preheader, %middle.block4049
  %indvars.iv990.i.ph = phi i64 [ %i.jew, %vector.memcheck4022 ], [ %i.jew, %.lr.ph866.i.preheader ], [ %i.jht, %middle.block4049 ]
  %indvars.iv988.i.ph = phi i64 [ 4, %vector.memcheck4022 ], [ 4, %.lr.ph866.i.preheader ], [ %i.jbz, %middle.block4049 ]
  br label %.lr.ph866.i

.lr.ph866.i:                                      ; preds = %.lr.ph866.i.preheader5249, %.lr.ph866.i
  %indvars.iv990.i = phi i64 [ %indvars.iv.next991.i, %.lr.ph866.i ], [ %indvars.iv990.i.ph, %.lr.ph866.i.preheader5249 ] ; 2 uses
  %indvars.iv988.i = phi i64 [ %indvars.iv.next989.i, %.lr.ph866.i ], [ %indvars.iv988.i.ph, %.lr.ph866.i.preheader5249 ] ; 3 uses
  %i.jim = add nsw i64 %indvars.iv988.i, -4       ; 4 uses
  %i.jin = getelementptr inbounds [4 x i8], ptr %.0769870.i, i64 %i.jim
  %i.jio = load float, ptr %i.jin, align 4, !tbaa !12, !noalias !496
  %i.jip = getelementptr inbounds [4 x i8], ptr %.0770869.i, i64 %i.jim
  %i.jiq = load float, ptr %i.jip, align 4, !tbaa !12, !noalias !496
  %i.jir = fadd reassoc nsz arcp contract afn float %i.jiq, %i.jio
  %i.jis = getelementptr inbounds [4 x i8], ptr %.0771868.i, i64 %i.jim
  %i.jit = load float, ptr %i.jis, align 4, !tbaa !12, !noalias !496
  %i.jiu = fadd reassoc nsz arcp contract afn float %i.jir, %i.jit
  %i.jiv = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.jiu, float 1.000000e-10) ; 2 uses
  %i.jiw = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.jim
  %i.jix = load float, ptr %i.jiw, align 4, !tbaa !12, !noalias !496
  %i.jiy = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv988.i ; 2 uses
  %i.jiz = getelementptr i8, ptr %i.jiy, i64 -12
  %i.jja = load float, ptr %i.jiz, align 4, !tbaa !12, !noalias !496
  %i.jjb = fadd reassoc nsz arcp contract afn float %i.jja, %i.jix
  %i.jjc = getelementptr i8, ptr %i.jiy, i64 -8
  %i.jjd = load float, ptr %i.jjc, align 4, !tbaa !12, !noalias !496
  %i.jje = fadd reassoc nsz arcp contract afn float %i.jjb, %i.jjd
  %i.jjf = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.jje, float 1.000000e-10)
  %i.jjg = fadd reassoc nsz arcp contract afn float %i.jjf, %i.jiv
  %i.jjh = fdiv reassoc nsz arcp contract afn float %i.jiv, %i.jjg
  %i.jji = getelementptr inbounds nuw [4 x i8], ptr %i.ive, i64 %indvars.iv990.i
  store float %i.jjh, ptr %i.jji, align 4, !tbaa !12, !noalias !494
  %indvars.iv.next989.i = add nuw nsw i64 %indvars.iv988.i, 1
  %indvars.iv.next991.i = add nuw nsw i64 %indvars.iv990.i, 1 ; 2 uses
  %exitcond1176.not = icmp eq i64 %indvars.iv.next991.i, %i.jdy
  br i1 %exitcond1176.not, label %.loopexit.i546, label %.lr.ph866.i, !llvm.loop !273

.preheader831.i:                                  ; preds = %._crit_edge879.i
  br i1 %i.iwi, label %.lr.ph889.i, label %.preheader830.i

.lr.ph889.i:                                      ; preds = %.preheader831.i
  %i.jjj = add nsw i32 %i.iyk, -4                 ; 2 uses
  %i.jjk = add i32 %smin1175, -9
  br label %bb.oc

bb.ob:                                            ; preds = %._crit_edge879.i, %.lr.ph881.i
  %indvars.iv995.i = phi i32 [ 226, %.lr.ph881.i ], [ %indvars.iv.next996.i, %._crit_edge879.i ] ; 3 uses
  %.0779880.i = phi i32 [ 2, %.lr.ph881.i ], [ %i.jlo, %._crit_edge879.i ] ; 2 uses
  %i.jjl = shl i32 %.0779880.i, 2
  %i.jjm = and i32 %i.jjl, 28
  %i.jjn = lshr i32 %.fr1070, %i.jjm
  %i.jjo = and i32 %i.jjn, 1                      ; 5 uses
  %i.jjp = or disjoint i32 %i.jjo, 2              ; 4 uses
  %i.jjq = icmp slt i32 %i.jjp, %i.jdv
  br i1 %i.jjq, label %.lr.ph878.preheader.i, label %._crit_edge879.i

.lr.ph878.preheader.i:                            ; preds = %bb.ob
  %i.jjr = or disjoint i32 %i.jjo, %indvars.iv995.i
  %i.jjs = zext i32 %i.jjr to i64                 ; 5 uses
  %i.jjt = lshr i64 %i.jjs, 1                     ; 4 uses
  %i.jju = sub i32 %i.jdw, %i.jjo                 ; 2 uses
  %i.jjv = lshr i32 %i.jju, 1
  %narrow5220 = add nuw i32 %i.jjv, 1
  %i.jjw = zext i32 %narrow5220 to i64            ; 2 uses
  %min.iters.check3955 = icmp ult i32 %i.jju, 16
  br i1 %min.iters.check3955, label %.lr.ph878.i.preheader, label %vector.memcheck3956

.lr.ph878.i.preheader:                            ; preds = %vector.body3962, %vector.memcheck3956, %.lr.ph878.preheader.i
  %indvars.iv999.i.ph = phi i64 [ %i.jjt, %vector.memcheck3956 ], [ %i.jjt, %.lr.ph878.preheader.i ], [ %i.jkq, %vector.body3962 ]
  %indvars.iv997.i.ph = phi i64 [ %i.jjs, %vector.memcheck3956 ], [ %i.jjs, %.lr.ph878.preheader.i ], [ %i.jks, %vector.body3962 ]
  %.0780876.i.ph = phi i32 [ %i.jjp, %vector.memcheck3956 ], [ %i.jjp, %.lr.ph878.preheader.i ], [ %i.jkv, %vector.body3962 ]
  br label %.lr.ph878.i

vector.memcheck3956:                              ; preds = %.lr.ph878.preheader.i
  %i.jjx = or disjoint i32 %indvars.iv995.i, %i.jjo
  %i.jjy = zext i32 %i.jjx to i64                 ; 2 uses
  %i.jjz = shl nuw nsw i64 %i.jjy, 1
  %i.jka = and i64 %i.jjz, 8589934588             ; 2 uses
  %i.jkb = getelementptr i8, ptr %i.ivf, i64 %i.jka
  %i.jkc = sub i32 %i.ixm, %i.jjo
  %i.jkd = lshr i32 %i.jkc, 1
  %i.jke = zext nneg i32 %i.jkd to i64            ; 2 uses
  %i.jkf = shl nuw nsw i64 %i.jke, 2
  %i.jkg = getelementptr i8, ptr %scevgep3953, i64 %i.jkf
  %i.jkh = getelementptr i8, ptr %i.jkg, i64 %i.jka
  %i.jki = shl nuw nsw i64 %i.jjy, 2              ; 2 uses
  %i.jkj = getelementptr i8, ptr %scevgep3950, i64 %i.jki
  %i.jkk = shl nuw nsw i64 %i.jke, 3
  %i.jkl = getelementptr i8, ptr %scevgep3949, i64 %i.jkk
  %i.jkm = getelementptr i8, ptr %i.jkl, i64 %i.jki
  %bound03957 = icmp ult ptr %i.jkb, %i.jkm
  %bound13958 = icmp ult ptr %i.jkj, %i.jkh
  %found.conflict3959 = and i1 %bound03957, %bound13958
  br i1 %found.conflict3959, label %.lr.ph878.i.preheader, label %vector.ph3960
end_hunk_1
